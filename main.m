for (NSUInteger i = 1; i <= 100; i++) { 
    NSString *result = @"";

    if (i % 3 == 0) {
        result = @"Fizz";
    }
    else {
        result = [NSString stringWithFormat:@"%lu", i];
    }
    NSLog(@"%@", result);
}
