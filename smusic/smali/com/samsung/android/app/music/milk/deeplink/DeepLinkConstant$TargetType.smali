.class public final enum Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
.super Ljava/lang/Enum;
.source "DeepLinkConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TargetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum ALBUM:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum ARTIST:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum BOTH_APPS:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum BROWSER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum CONTACT_US:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum CUSTOMIZE_DIAL:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum DOWNLOAD_CART:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum FAVORITES:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum GALAXY_APPS:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum GOOGLE_APPS:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum HISTORY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum JUST_FOR_YOU:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum LIST:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum LOGIN:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum MILK_PICK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum MILK_PICK_DETAIL:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum MILK_RADIO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum MY_STATIONS:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum NEW_RELEASE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum NO_FEEDBACK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum ON_DEVICE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum PLAYLISTS:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum PREMIUM:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum PRODUCT_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum PURCHASED:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum SEARCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum SETTINGS:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum SONG:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum STAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum SUBSCRIPTION_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum TOP_CHART:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum VOUCHER_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field public static final enum WEBVIEW:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 162
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "MY_STATIONS"

    const-string v2, "mystations"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->MY_STATIONS:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 163
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "CUSTOMIZE_DIAL"

    const-string v2, "customizedial"

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->CUSTOMIZE_DIAL:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 164
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "SETTINGS"

    const-string/jumbo v2, "settings"

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->SETTINGS:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 165
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "CONTACT_US"

    const-string v2, "contactus"

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->CONTACT_US:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 166
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "PURCHASED"

    const-string/jumbo v2, "purchased"

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PURCHASED:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 167
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "FAVORITES"

    const/4 v2, 0x5

    const-string v3, "favorites"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->FAVORITES:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 168
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "ON_DEVICE"

    const/4 v2, 0x6

    const-string/jumbo v3, "ondevice"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ON_DEVICE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 169
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "PLAYLISTS"

    const/4 v2, 0x7

    const-string/jumbo v3, "playlists"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PLAYLISTS:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 170
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "HISTORY"

    const/16 v2, 0x8

    const-string v3, "history"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->HISTORY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 171
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "PREMIUM"

    const/16 v2, 0x9

    const-string/jumbo v3, "premium"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PREMIUM:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 172
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "PRODUCT_TAB"

    const/16 v2, 0xa

    const-string/jumbo v3, "producttab"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PRODUCT_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 173
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "VOUCHER_TAB"

    const/16 v2, 0xb

    const-string/jumbo v3, "vouchertab"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->VOUCHER_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 174
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "SUBSCRIPTION_TAB"

    const/16 v2, 0xc

    const-string/jumbo v3, "subscriptiontab"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->SUBSCRIPTION_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 175
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "SONG"

    const/16 v2, 0xd

    const-string/jumbo v3, "song"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->SONG:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 176
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "ALBUM"

    const/16 v2, 0xe

    const-string v3, "album"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ALBUM:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 177
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "ARTIST"

    const/16 v2, 0xf

    const-string v3, "artist"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ARTIST:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 178
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "MILK_PICK"

    const/16 v2, 0x10

    const-string v3, "milkpick"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->MILK_PICK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 179
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "MILK_PICK_DETAIL"

    const/16 v2, 0x11

    const-string v3, "milkpickdetail"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->MILK_PICK_DETAIL:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 180
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "MILK_RADIO"

    const/16 v2, 0x12

    const-string v3, "milkradio"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->MILK_RADIO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 181
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "TOP_CHART"

    const/16 v2, 0x13

    const-string/jumbo v3, "topchart"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->TOP_CHART:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 182
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "NEW_RELEASE"

    const/16 v2, 0x14

    const-string v3, "newrelease"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->NEW_RELEASE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 183
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "MUSIC_VIDEO"

    const/16 v2, 0x15

    const-string v3, "musicvideo"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 184
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "DOWNLOAD_CART"

    const/16 v2, 0x16

    const-string v3, "downloadcart"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->DOWNLOAD_CART:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 185
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "SEARCH"

    const/16 v2, 0x17

    const-string/jumbo v3, "search"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->SEARCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 186
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "JUST_FOR_YOU"

    const/16 v2, 0x18

    const-string v3, "justforyou"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->JUST_FOR_YOU:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 187
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "GALAXY_APPS"

    const/16 v2, 0x19

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->GALAXY_APPS:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 188
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "GOOGLE_APPS"

    const/16 v2, 0x1a

    const-string v3, "2"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->GOOGLE_APPS:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 189
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "BOTH_APPS"

    const/16 v2, 0x1b

    const-string v3, "3"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->BOTH_APPS:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 190
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "WEBVIEW"

    const/16 v2, 0x1c

    const-string/jumbo v3, "webview"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->WEBVIEW:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 191
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "BROWSER"

    const/16 v2, 0x1d

    const-string v3, "browser"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->BROWSER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 192
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "LIST"

    const/16 v2, 0x1e

    const-string v3, "list"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->LIST:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 193
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "LOGIN"

    const/16 v2, 0x1f

    const-string v3, "login"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->LOGIN:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 194
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "STAY"

    const/16 v2, 0x20

    const-string/jumbo v3, "stay"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->STAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 195
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    const-string v1, "NO_FEEDBACK"

    const/16 v2, 0x21

    const-string v3, "nofeedback"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->NO_FEEDBACK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 161
    const/16 v0, 0x22

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->MY_STATIONS:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->CUSTOMIZE_DIAL:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->SETTINGS:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->CONTACT_US:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PURCHASED:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->FAVORITES:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ON_DEVICE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PLAYLISTS:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->HISTORY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PREMIUM:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PRODUCT_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->VOUCHER_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->SUBSCRIPTION_TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->SONG:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ALBUM:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ARTIST:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->MILK_PICK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->MILK_PICK_DETAIL:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->MILK_RADIO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->TOP_CHART:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->NEW_RELEASE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->MUSIC_VIDEO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->DOWNLOAD_CART:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->SEARCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->JUST_FOR_YOU:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->GALAXY_APPS:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->GOOGLE_APPS:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->BOTH_APPS:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->WEBVIEW:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->BROWSER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->LIST:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->LOGIN:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->STAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->NO_FEEDBACK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->$VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 200
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->value:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public static getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    .locals 5
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 209
    .local v0, "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    iget-object v4, v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    .end local v0    # "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    :goto_1
    return-object v0

    .line 208
    .restart local v0    # "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 161
    const-class v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->$VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->value:Ljava/lang/String;

    return-object v0
.end method
