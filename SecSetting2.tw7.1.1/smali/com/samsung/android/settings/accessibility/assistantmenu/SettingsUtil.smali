.class public Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# static fields
.field public static mIconImgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mIconStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mNotPrefsDefaltValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mNotPrefsDefaltValueWcursor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPrefsDefaltValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPrefsDefaltValueWcursor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mShortImgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValue:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mNotPrefsDefaltValueWcursor:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mShortImgMap:Ljava/util/HashMap;

    .line 38
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->BrightnessControl:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020094

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->DeviceOption:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020096

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressBackKey:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020093

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020097

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenControl:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0200a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->QuickPanel:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02009a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->RecentappList:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02009c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenCapture:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02009f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenLock:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f020098

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenRotate:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f02009e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0200a1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->VolumeControl:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0200a2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ZoomControl:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0200a3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->FingerMouse:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0200a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->HoverZoom:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0200b5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->None:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b0525

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->BrightnessControl:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b1650

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->DeviceOption:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b038c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressBackKey:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b037f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b0380

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenControl:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b0384

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->QuickPanel:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b038a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->RecentappList:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b038b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenCapture:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b0381

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenLock:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b038d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenRotate:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b0385

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b0383

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->VolumeControl:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b0389

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ZoomControl:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b0386

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->FingerMouse:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b0387

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->HoverZoom:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    const v2, 0x7f0b0388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string/jumbo v1, "0"

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->RecentappList:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string/jumbo v1, "1"

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string/jumbo v1, "2"

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressBackKey:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string/jumbo v1, "3"

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->QuickPanel:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string/jumbo v1, "4"

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->FingerMouse:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string/jumbo v1, "5"

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenControl:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string/jumbo v1, "6"

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->VolumeControl:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string/jumbo v1, "7"

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenLock:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string/jumbo v1, "8"

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenCapture:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string/jumbo v1, "9"

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ZoomControl:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string/jumbo v1, "10"

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->DeviceOption:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string/jumbo v1, "11"

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mNotPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string/jumbo v1, "0"

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->BrightnessControl:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mNotPrefsDefaltValueWcursor:Ljava/util/HashMap;

    const-string/jumbo v1, "1"

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->ScreenRotate:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddOptionalMenuIfNeed(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "bResult":Z
    const/4 v1, 0x0

    .line 107
    .local v1, "findHoverZoom":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 108
    sget-object v3, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->HoverZoom:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 107
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_1
    const-string/jumbo v3, "com.sec.feature.overlaymagnifier"

    invoke-static {p0, v3}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    .line 114
    sget-object v3, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    sget-object v4, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->HoverZoom:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const/4 v0, 0x1

    .line 120
    :cond_2
    return v0
.end method

.method public static removeOldPreferencesPreventFC(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyMenuItemTotalCount:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 126
    .local v4, "totalUpperItemCount":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyLowerItemTotalCount:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 129
    .local v3, "totalLowerItemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 130
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "position":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "assistant_menu_icon_key"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 133
    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    .line 129
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "position":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_5

    .line 137
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 138
    .restart local v2    # "position":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "assistant_menu_icon_key00"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 140
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 141
    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    .end local v2    # "position":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_3

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "assistant_menu_icon_key"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 148
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyMenuItemTotalCount:Ljava/lang/String;

    sget-object v8, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_4

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "assistant_menu_icon_key00"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 152
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 151
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 154
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyLowerItemTotalCount:Ljava/lang/String;

    sget-object v8, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mNotPrefsDefaltValueWcursor:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    return-void
.end method
