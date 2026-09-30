package com.autonavi.amapauto.content;

import android.graphics.Color;

public final class ContentTheme {
    public final int background;
    public final int surface;
    public final int elevated;
    public final int text;
    public final int secondaryText;
    public final int mutedText;
    public final int divider;
    public final int accent;
    public final int selected;
    public final int pressed;
    public final int positive;
    public final int warning;
    public final int error;

    private ContentTheme(int background, int surface, int elevated, int text, int secondaryText,
            int mutedText, int divider, int accent, int selected, int pressed, int positive, int warning,
            int error) {
        this.background = background;
        this.surface = surface;
        this.elevated = elevated;
        this.text = text;
        this.secondaryText = secondaryText;
        this.mutedText = mutedText;
        this.divider = divider;
        this.accent = accent;
        this.selected = selected;
        this.pressed = pressed;
        this.positive = positive;
        this.warning = warning;
        this.error = error;
    }

    public static ContentTheme light() {
        return new ContentTheme(
                Color.rgb(244, 244, 244),
                Color.rgb(233, 233, 233),
                Color.rgb(255, 255, 255),
                Color.rgb(39, 48, 59),
                Color.rgb(102, 102, 102),
                Color.rgb(115, 115, 115),
                Color.rgb(218, 218, 218),
                Color.rgb(47, 141, 255),
                Color.rgb(255, 255, 255),
                Color.rgb(210, 221, 232),
                Color.rgb(29, 113, 66),
                Color.rgb(143, 89, 17),
                Color.rgb(179, 46, 44));
    }

    public static ContentTheme dark() {
        return new ContentTheme(
                Color.rgb(15, 15, 15),
                Color.rgb(26, 26, 26),
                Color.rgb(35, 35, 35),
                Color.rgb(218, 218, 218),
                Color.rgb(162, 162, 162),
                Color.rgb(133, 133, 133),
                Color.rgb(53, 53, 53),
                Color.rgb(126, 159, 197),
                Color.rgb(45, 45, 45),
                Color.rgb(65, 65, 65),
                Color.rgb(112, 187, 137),
                Color.rgb(209, 160, 100),
                Color.rgb(219, 119, 114));
    }

    public static ContentTheme interpolate(ContentTheme start, ContentTheme end, float fraction) {
        return new ContentTheme(
                blend(start.background, end.background, fraction),
                blend(start.surface, end.surface, fraction),
                blend(start.elevated, end.elevated, fraction),
                blend(start.text, end.text, fraction),
                blend(start.secondaryText, end.secondaryText, fraction),
                blend(start.mutedText, end.mutedText, fraction),
                blend(start.divider, end.divider, fraction),
                blend(start.accent, end.accent, fraction),
                blend(start.selected, end.selected, fraction),
                blend(start.pressed, end.pressed, fraction),
                blend(start.positive, end.positive, fraction),
                blend(start.warning, end.warning, fraction),
                blend(start.error, end.error, fraction));
    }

    private static int blend(int start, int end, float fraction) {
        int startRed = Color.red(start);
        int startGreen = Color.green(start);
        int startBlue = Color.blue(start);
        int endRed = Color.red(end);
        int endGreen = Color.green(end);
        int endBlue = Color.blue(end);
        int red = startRed + Math.round((endRed - startRed) * fraction);
        int green = startGreen + Math.round((endGreen - startGreen) * fraction);
        int blue = startBlue + Math.round((endBlue - startBlue) * fraction);
        return Color.rgb(red, green, blue);
    }
}
