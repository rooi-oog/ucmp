#ifndef UC_MULTI_PROTOCOL_H
#define UC_MULTI_PROTOCOL_H

#include <stdlib.h>
#include <argp.h>

const char *argp_program_version =
	"ucmp-bk 0.1";
const char *argp_program_bug_address =
  "<rooi_oog@yahoo.com>";

/* Program documentation. */
static char doc[] =
  "UC multi protocol -- a program being a bridge from PC to periphery\
\v\nDefault port is '/dev/ttyACM0'\n\n\
Examples:\n\
  ucmp-bk -d 24C01 -r\t\tRead from 24C01 eeprom to stdout\n\
  ucmp-bk -d 24C02 -w \t\tRead from stdin binary data and write to 24C02 eeprom\n\
  ucmp-bk -p 128\t\tSet 50% duty of PWM";

/* A description of the arguments we accept. */
static char args_doc[] = "";

/* The options we understand. */
static struct argp_option options[] = {
  {"device",  	'd', "DEVICE",  0,  "Select device to programm" },
  {"size",		's', "SIZE",	0,	"Serial EEPROM device size in bytes"},
  {"list",		'l', 0,      	0,  "List of all available devices"},
  {"pwm1",    	 2,  "DUTY", 	0,  "Set 1st channel PWM duty" },
  {"pwm2",    	 3,  "DUTY", 	0,  "Set 2nd channel PWM duty" },
  {"gpio",		'g', "VALUE",  	OPTION_ARG_OPTIONAL,  "[0:7] GPIO access"},
  {"analog",	'a', 0,      	0,  "Read analog in "},
  {"read",		'r', 0,      	0,  "Read from device command"},
  {"write",		'w', 0,      	0,  "Write to device command"},
  {"mode",		'm', "BITMASK",	0,	"Set gpio mode to: 0 - in; 1 - out"},
  {"port",		 1 , "PORT", 	0,	"CDCACM port name" },
  { 0 }
};

/* Used by main to communicate with parse_opt. */
struct arguments
{
  char *args;
  int list, mode, pwm1, pwm2, gpio, analog, read, write;
  char *device;
  char *duty1;
  char *duty2;
  char *value;
  int size;
  unsigned char bitmask;
  char *port;
  int cmd;
};

/* Parse a single option. */
static error_t 
parse_opt (int key, char *arg, struct argp_state *state)
{
	/* Get the input argument from argp_parse, which we
	know is a pointer to our arguments structure. */
	struct arguments *arguments = state->input;

	switch (key)
	{
		case 'a':
			arguments->analog = 1;
			break;			
		case 'd':
			arguments->device = arg;			
			break;		
		case 'g':
			arguments->gpio = 1;
			arguments->value = arg;
			break;			
		case 'l':
			arguments->list = 1;
			break;
		case 'm':
			arguments->mode = 1;
			arguments->bitmask = atoi (arg);
			break;			
		case 'r':
			arguments->read = 1;
			break;
		case 's':
			arguments->size = atoi (arg);
			break;
		case 'w':
			arguments->write = 1;
			break;			
		case 1:	// --port
			arguments->port = arg;
			break;
		case 2: // --pwm1
			arguments->pwm1 = 1;
			arguments->duty1 = arg;
			break;
		case 3: // --pwm2
			arguments->pwm2 = 1;
			arguments->duty2 = arg;
			break;			

		case ARGP_KEY_END:
			if (arguments->list)
				break;
				
			if (!(arguments->pwm1 | arguments->pwm2 | arguments->gpio | arguments->analog | arguments->mode))
				if ((arguments->device == ""))
					argp_usage (state);
				else if (!(arguments->read | arguments->write))	
					argp_usage (state);
			break;

		default:
			return ARGP_ERR_UNKNOWN;
	}
	
	return 0;
}

/* Our argp parser. */
static struct argp argp = { options, parse_opt, args_doc, doc };

#endif /* UC_MULTI_PROTOCOL_H */

