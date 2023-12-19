int main(const int argc, const char* argv[])
{
	printf("Hello, World!\n\n");
	printf("Args:\n");

	for (int i = 0; i < argc; ++i)
	{
		printf("%s\n",argv[i]);
	}

	return 0;
}
