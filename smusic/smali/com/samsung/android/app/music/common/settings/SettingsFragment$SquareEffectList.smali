.class final enum Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;
.super Ljava/lang/Enum;
.source "SettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SquareEffectList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

.field public static final enum AUTO:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

.field public static final enum CLASSIC:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

.field public static final enum CUSTOM:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

.field public static final enum JAZZ:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

.field public static final enum NORMAL:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

.field public static final enum POP:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

.field public static final enum ROCK:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;


# instance fields
.field public title:I

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1532
    new-instance v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    const-string v1, "AUTO"

    const/16 v2, 0x63

    const v3, 0x7f0a007e

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->AUTO:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    new-instance v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    const-string v1, "NORMAL"

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_NORMAL:I

    const v3, 0x7f0a013c

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->NORMAL:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    .line 1533
    new-instance v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    const-string v1, "CLASSIC"

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_CLASSIC:I

    const v3, 0x7f0a008f

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->CLASSIC:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    .line 1534
    new-instance v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    const-string v1, "ROCK"

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_ROCK:I

    const v3, 0x7f0a0172

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->ROCK:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    .line 1535
    new-instance v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    const-string v1, "POP"

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_POP:I

    const v3, 0x7f0a0154

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->POP:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    new-instance v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    const-string v1, "JAZZ"

    const/4 v2, 0x5

    sget v3, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_JAZZ:I

    const v4, 0x7f0a00d4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->JAZZ:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    .line 1536
    new-instance v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    const-string v1, "CUSTOM"

    const/4 v2, 0x6

    sget v3, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_USER:I

    const v4, 0x7f0a0099

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->CUSTOM:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    .line 1531
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    sget-object v1, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->AUTO:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->NORMAL:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->CLASSIC:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->ROCK:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->POP:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->JAZZ:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->CUSTOM:Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->$VALUES:[Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "title"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 1543
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1544
    iput p3, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->value:I

    .line 1545
    iput p4, p0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->title:I

    .line 1546
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1531
    const-class v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;
    .locals 1

    .prologue
    .line 1531
    sget-object v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->$VALUES:[Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/common/settings/SettingsFragment$SquareEffectList;

    return-object v0
.end method
