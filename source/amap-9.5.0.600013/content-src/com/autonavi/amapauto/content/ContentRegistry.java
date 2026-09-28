package com.autonavi.amapauto.content;

public final class ContentRegistry {
    private ContentRegistry() {
    }

    public static final class Pages {
        public static final String SHORTCUTS = "shortcuts";
        public static final String VEHICLE_INFO = "vehicle_info";
        public static final String LYRICS = "lyrics";
        public static final String PROJECTION = "projection";

        private Pages() {
        }
    }

    public static final class Controls {
        public static final String MEDIA = "media";
        public static final String CLIMATE = "climate";

        private Controls() {
        }
    }

    public static final class Shortcuts {
        public static final String LOCK = "lock";
        public static final String SEAT_VENTILATION = "seat_ventilation";
        public static final String SEAT_HEATING = "seat_heating";
        public static final String SEAT_MASSAGE = "seat_massage";
        public static final String SETTINGS = "settings";

        private Shortcuts() {
        }
    }

    public static String[] registeredPageIds() {
        return new String[]{
                Pages.SHORTCUTS,
                Pages.VEHICLE_INFO,
                Pages.LYRICS,
                Pages.PROJECTION
        };
    }

    public static String[] visiblePageIds() {
        return new String[]{Pages.SHORTCUTS, Pages.LYRICS};
    }

    public static String[] controlIds() {
        return new String[]{Controls.MEDIA, Controls.CLIMATE};
    }

    public static String[] mediaSources() {
        return new String[]{"蓝牙", "爱趣听", "网易云", "U盘", "本机"};
    }

    public static String[] defaultDockItems() {
        return new String[]{
                Pages.SHORTCUTS,
                Shortcuts.SEAT_VENTILATION,
                Shortcuts.SEAT_HEATING,
                Shortcuts.SEAT_MASSAGE,
                Shortcuts.SETTINGS
        };
    }

    public static String[] dockChoices() {
        return new String[]{
                Pages.SHORTCUTS,
                Shortcuts.SEAT_VENTILATION,
                Shortcuts.SEAT_HEATING,
                Shortcuts.SEAT_MASSAGE,
                Shortcuts.SETTINGS
        };
    }

    public static boolean isDockItem(String itemId) {
        if (itemId == null) {
            return false;
        }
        for (String validItem : dockChoices()) {
            if (validItem.equals(itemId)) {
                return true;
            }
        }
        return false;
    }
}
