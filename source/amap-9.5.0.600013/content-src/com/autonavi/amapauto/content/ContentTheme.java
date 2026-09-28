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
                Color.rgb(242, 243, 245),
                Color.rgb(255, 255, 255),
                Color.rgb(232, 234, 237),
                Color.rgb(35, 38, 43),
                Color.rgb(98, 103, 111),
                Color.rgb(155, 160, 168),
                Color.rgb(215, 218, 222),
                Color.rgb(55, 126, 242),
                Color.rgb(220, 233, 255),
                Color.rgb(54, 190, 100),
                Color.rgb(241, 155, 38),
                Color.rgb(224, 70, 67));
    }

    public static ContentTheme dark() {
        return new ContentTheme(
                Color.rgb(27, 29, 32),
                Color.rgb(43, 46, 52),
                Color.rgb(55, 59, 66),
                Color.rgb(244, 246, 248),
                Color.rgb(176, 182, 191),
                Color.rgb(120, 126, 136),
                Color.rgb(70, 75, 84),
                Color.rgb(105, 162, 255),
                Color.rgb(48, 78, 122),
                Color.rgb(73, 207, 116),
                Color.rgb(244, 169, 62),
                Color.rgb(241, 91, 88));
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
