// Were gonna hook the table cells in the Settings app and change the color.
// This tweak works on iOS 10.

%hook PSTableCell // This hooks right.

-(UIColor *)backgroundColor {
    return [UIColor colorWithRed:0.45 green:0.54 blue:0.85 alpha:1.0];
}

-(void)setBackgroundColor:(UIColor *)backgroundColor {
	%orig([UIColor colorWithRed:0.45 green:0.54 blue:0.85 alpha:1.0]);
}
%end

// Now we can set the background colors for behind the cells.

%hook UITableView

-(UIColor *)backgroundColor {
	return [UIColor colorWithRed:0.26 green:0.27 blue:0.29 alpha:1.0];
}

-(void)setBackgroundColor:(UIColor *)backgroundColor {
	%orig([UIColor colorWithRed:0.26 green:0.27 blue:0.29 alpha:1.0]);
}

%end

// We need to set the colors of the grey strings.

%hook _UITableViewHeaderFooterViewLabel

-(UIColor *)textColor {
	return [UIColor whiteColor];
}

-(void)setTextColor:(UIColor *)textColor {
	%orig([UIColor whiteColor]);
}

%end

// Now we can color the top bar.

%hook _UIVisualEffectFilterView

-(UIColor *)backgroundColor {
	return [UIColor colorWithRed:0.33 green:0.34 blue:0.36 alpha:0.8];
}

-(void)setBackgroundColor:(UIColor *)backgroundColor {
	%orig([UIColor colorWithRed:0.33 green:0.34 blue:0.36 alpha:0.8]);
}

%end

// I have to set the colors of other stuff

%hook UILabel

-(UIColor *)textColor {
	return [UIColor whiteColor];
}

-(void)setTextColor:(UIColor *)textColor {
	%orig([UIColor whiteColor]);
}

%end

%hook UITextFeildLabel

-(UIColor *)textColor {
	return [UIColor whiteColor];
}

-(void)setTextColor:(UIColor *)textColor {
	%orig([UIColor whiteColor]);
}

%end

%hook UITableViewLabel

-(UIColor *)textColor {
	return [UIColor whiteColor];
}

-(void)setTextColor:(UIColor *)textColor {
	%orig([UIColor whiteColor]);
}

%end