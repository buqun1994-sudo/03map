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
    public final int positive;
    public final int warning;
    public final int error;

    private ContentTheme(int background, int surface, int elevated, int text, int secondaryText,
            int mutedText, int divider, int accent, int selected, int positive, int warning,
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
        this.positive = positive;
        this.warning = warning;
        this.error = error;
    }

    public static ContentTheme light() {
        return new ContentTheme(
                Color.rgb(237, 242, 250),
                Color.rgb(246, 248, 252),
                Color.rgb(255, 255, 255),
                Color.rgb(32, 38, 51),
                Color.rgb(91, 100, 116),
                Color.rgb(99, 108, 123),
                Color.rgb(214, 222, 233),
                Color.rgb(36, 99, 190),
                Color.rgb(223, 234, 251),
                Color.rgb(29, 113, 66),
                Color.rgb(143, 89, 17),
                Color.rgb(179, 46, 44));
    }

    public static ContentTheme dark() {
        return new ContentTheme(
                Color.rgb(23, 25, 29),
                Color.rgb(37, 40, 45),
                Color.rgb(48, 52, 59),
                Color.rgb(244, 246, 250),
                Color.rgb(173, 181, 194),
                Color.rgb(159, 168, 183),
                Color.rgb(66, 72, 83),
                Color.rgb(131, 180, 255),
                Color.rgb(39, 59, 86),
                Color.rgb(106, 217, 143),
                Color.rgb(241, 185, 94),
                Color.rgb(255, 130, 127));
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
