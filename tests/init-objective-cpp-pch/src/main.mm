#import <Foundation/Foundation.h>

int main(int argc, const char* argv[])
{
	@autoreleasepool {
		NSLog(@"Hello, World!\n");
		NSLog(@"Args:");

		for (int i = 0; i < argc; ++i)
		{
			NSLog(@"%@\n", @(argv[i]));
		}
	}
	return 0;
}
