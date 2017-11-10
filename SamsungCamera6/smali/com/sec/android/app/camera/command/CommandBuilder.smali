.class public Lcom/sec/android/app/camera/command/CommandBuilder;
.super Ljava/lang/Object;
.source "CommandBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x63

    if-ne p0, v1, :cond_1

    new-instance v0, Lcom/sec/android/app/camera/command/EmptyCommand;

    invoke-direct {v0}, Lcom/sec/android/app/camera/command/EmptyCommand;-><init>()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_0

    sparse-switch p0, :sswitch_data_0

    const/16 v1, 0x1f40

    if-lt p0, v1, :cond_2

    const/16 v1, 0x2328

    if-ge p0, v1, :cond_2

    new-instance v0, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/sec/android/app/camera/command/ToggleSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ToggleSelectCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchMenuCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/LaunchMenuCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/sec/android/app/camera/command/ISOSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ISOSelectCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/sec/android/app/camera/command/WhiteBalanceSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/WhiteBalanceSelectCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/sec/android/app/camera/command/MoreSettingsCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/MoreSettingsCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/sec/android/app/camera/command/SwitchCameraCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/SwitchCameraCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;)V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/DualEffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SingleEffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V

    goto :goto_0

    :sswitch_9
    new-instance v0, Lcom/sec/android/app/camera/command/ShootingModeDownloadCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/ShootingModeDownloadCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;)V

    goto :goto_0

    :sswitch_a
    new-instance v0, Lcom/sec/android/app/camera/command/VideoCollageTypeMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/VideoCollageTypeMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V

    goto :goto_0

    :sswitch_b
    new-instance v0, Lcom/sec/android/app/camera/command/VideoCollageRecTimeMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/VideoCollageRecTimeMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V

    goto :goto_0

    :sswitch_c
    new-instance v0, Lcom/sec/android/app/camera/command/HelpHubCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/HelpHubCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;)V

    goto :goto_0

    :sswitch_d
    new-instance v0, Lcom/sec/android/app/camera/command/BeautyMenuCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/BeautyMenuCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V

    goto :goto_0

    :sswitch_e
    new-instance v0, Lcom/sec/android/app/camera/command/FoodBlurTypeMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FoodBlurTypeMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V

    goto :goto_0

    :sswitch_f
    new-instance v0, Lcom/sec/android/app/camera/command/RecordingMotionSpeedMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/RecordingMotionSpeedMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x238c

    if-lt p0, v1, :cond_0

    const/16 v1, 0x25e4

    if-ge p0, v1, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/command/WatermarkMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/WatermarkMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x8 -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0x12 -> :sswitch_1
        0x17 -> :sswitch_0
        0x22 -> :sswitch_0
        0x24 -> :sswitch_5
        0x4d -> :sswitch_0
        0x54 -> :sswitch_0
        0x5a -> :sswitch_1
        0x71 -> :sswitch_1
        0x74 -> :sswitch_9
        0x75 -> :sswitch_1
        0x77 -> :sswitch_1
        0x78 -> :sswitch_4
        0x7d -> :sswitch_1
        0x7f -> :sswitch_1
        0x80 -> :sswitch_1
        0x81 -> :sswitch_1
        0x83 -> :sswitch_1
        0x84 -> :sswitch_1
        0x87 -> :sswitch_0
        0x8d -> :sswitch_0
        0x91 -> :sswitch_0
        0x96 -> :sswitch_1
        0xaa -> :sswitch_0
        0xad -> :sswitch_0
        0x12c -> :sswitch_8
        0x12d -> :sswitch_8
        0x12e -> :sswitch_8
        0x133 -> :sswitch_8
        0x13a -> :sswitch_8
        0x13d -> :sswitch_8
        0x13f -> :sswitch_8
        0x149 -> :sswitch_8
        0x14d -> :sswitch_8
        0x14e -> :sswitch_8
        0x14f -> :sswitch_8
        0x150 -> :sswitch_8
        0x151 -> :sswitch_8
        0x152 -> :sswitch_8
        0x154 -> :sswitch_8
        0x156 -> :sswitch_8
        0x157 -> :sswitch_8
        0x158 -> :sswitch_8
        0x15a -> :sswitch_8
        0x15b -> :sswitch_8
        0x15c -> :sswitch_8
        0x15d -> :sswitch_8
        0x15e -> :sswitch_8
        0x15f -> :sswitch_8
        0x160 -> :sswitch_8
        0x161 -> :sswitch_8
        0x162 -> :sswitch_8
        0x163 -> :sswitch_8
        0x164 -> :sswitch_8
        0x166 -> :sswitch_8
        0x167 -> :sswitch_8
        0x168 -> :sswitch_8
        0x384 -> :sswitch_3
        0x385 -> :sswitch_3
        0x386 -> :sswitch_3
        0x387 -> :sswitch_3
        0x388 -> :sswitch_3
        0x389 -> :sswitch_3
        0x3e8 -> :sswitch_7
        0x3e9 -> :sswitch_7
        0x3ea -> :sswitch_7
        0x3eb -> :sswitch_7
        0x3f7 -> :sswitch_7
        0x3f8 -> :sswitch_7
        0x3f9 -> :sswitch_7
        0x3fa -> :sswitch_7
        0x3fb -> :sswitch_7
        0x3fc -> :sswitch_7
        0x3fd -> :sswitch_7
        0x3fe -> :sswitch_7
        0x3ff -> :sswitch_7
        0x41a -> :sswitch_6
        0x41b -> :sswitch_6
        0x41c -> :sswitch_6
        0x41d -> :sswitch_6
        0x41e -> :sswitch_6
        0x41f -> :sswitch_6
        0x420 -> :sswitch_6
        0x421 -> :sswitch_6
        0x422 -> :sswitch_6
        0x423 -> :sswitch_6
        0x424 -> :sswitch_6
        0x425 -> :sswitch_6
        0x44c -> :sswitch_2
        0x44d -> :sswitch_2
        0x44e -> :sswitch_2
        0x44f -> :sswitch_2
        0x450 -> :sswitch_2
        0x451 -> :sswitch_2
        0x452 -> :sswitch_2
        0x453 -> :sswitch_2
        0x454 -> :sswitch_2
        0x455 -> :sswitch_2
        0x456 -> :sswitch_2
        0x457 -> :sswitch_2
        0x458 -> :sswitch_2
        0xbc3 -> :sswitch_c
        0xbc4 -> :sswitch_0
        0xbc5 -> :sswitch_0
        0x1838 -> :sswitch_a
        0x1839 -> :sswitch_a
        0x183a -> :sswitch_a
        0x1842 -> :sswitch_a
        0x1843 -> :sswitch_a
        0x184c -> :sswitch_a
        0x184d -> :sswitch_a
        0x184e -> :sswitch_a
        0x184f -> :sswitch_a
        0x1856 -> :sswitch_a
        0x1857 -> :sswitch_a
        0x1858 -> :sswitch_a
        0x1859 -> :sswitch_a
        0x1860 -> :sswitch_b
        0x1861 -> :sswitch_b
        0x1862 -> :sswitch_b
        0x1863 -> :sswitch_b
        0x1900 -> :sswitch_f
        0x1901 -> :sswitch_f
        0x1902 -> :sswitch_f
        0x1903 -> :sswitch_f
        0x1904 -> :sswitch_f
        0x1964 -> :sswitch_d
        0x1965 -> :sswitch_d
        0x1966 -> :sswitch_d
        0x1967 -> :sswitch_d
        0x1968 -> :sswitch_d
        0x1ac2 -> :sswitch_e
        0x1ac3 -> :sswitch_e
        0x232a -> :sswitch_7
    .end sparse-switch
.end method

.method public static buildCommandWithSub(Ljava/lang/String;ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;

    invoke-direct {v0, p2, p1, p0}, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/interfaces/CommandInterface;ILjava/lang/String;)V

    return-object v0
.end method
