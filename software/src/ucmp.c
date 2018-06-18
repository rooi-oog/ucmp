#include <string.h>
#include "opts.h"
#include "device.h"

device_t devices [] = {
	{'d', 128,  8,  "24C01", "I2C"},
	{'d', 256,  8,  "24C02", "I2C"},
	{'d', 512,  16, "24C04", "I2C"},
	{'d', 1024, 16, "24C08", "I2C"},
	{'d', 2048, 16, "24C16", "I2C"},
	{'d', 1, 0, "Serial EEPROMs", "SPI"},	
	{'d', 0, 0, "", ""}
};

static device_t *search_device_by_title (const char *title)
{
	for (int i = 0; devices [i].size != 0; i++)		
		if (strcmp (devices [i].title, title) == 0)
			return &devices[i];

	return NULL;
}

int main (int argc, char *argv[])
{
	struct arguments args;
	struct ucmp ucmp;
	
	ucmp_init (&ucmp);
	bzero (&args, sizeof (struct arguments));
	args.port = "/dev/ttyACM0";
	
	argp_parse (&argp, argc, argv, 0, 0, &args);	
	
	if (args.list) {		
		fprintf (stdout, "List of available devices:\n");
		for (device_t *d = devices; d->size != 0; d++)		
			fprintf (stdout, "  Type: %s, Name: %s\n", d->type, d->title);		
		exit (EXIT_SUCCESS);
	}
	
	if (args.pwm1)
		ucmp.pwm1.set (args.port, atoi (args.duty1));
		
	if (args.pwm2)
		ucmp.pwm2.set (args.port, atoi (args.duty2));
		
	if (args.mode) {
		ucmp.mode.set (args.port, args.bitmask);
	}

	if (args.gpio) {
		if (args.read) {
			fprintf (stdout, "%d", ucmp.gpio.get (args.port));
		} else if (args.write) {
			ucmp.gpio.set (args.port, atoi (args.value));
		}
	}
	
	if (args.device != NULL) {
		if ((ucmp.prg.dev = search_device_by_title (args.device)) == NULL) {
			fprintf (stderr, "No such device: %s\n", args.device);
			exit (EXIT_FAILURE);
		}
		
		if (strcmp (ucmp.prg.dev->type, "SPI") == 0) {
			/* We get size from user input only */
			if ((ucmp.prg.dev->size = args.size) == 0) {
				fprintf (stderr, "You must specify a size for SPI EEPROM\n");
				exit (EXIT_FAILURE);
			}
		}
		
		if (args.read) {
			fwrite (ucmp.prg.read (args.port, ucmp.prg.dev), 1, ucmp.prg.dev->size, stdout);
		} else if (args.write) {
			char *buf = malloc (ucmp.prg.dev->size);
			fread (buf, 1, ucmp.prg.dev->size, stdin);
			ucmp.prg.write (args.port, ucmp.prg.dev, buf);
			free (buf);
		}
	}
	
	if (args.analog) {
		fprintf (stdout, "%d", ucmp.analog.get (args.port));
	}
	
	exit (EXIT_SUCCESS);
}

