.class public Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SoundPlayerFileInfo;
.super Ljava/lang/Object;
.source "SoundPlayerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundPlayerFileInfo"
.end annotation


# static fields
.field public static final EXTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final INTERNAL_CONTENT_URI:Landroid/net/Uri;

.field public static final MMS_URI:Ljava/lang/String; = "content://mms/part/"

.field public static final SECURITY_MAILBOX_URI:Ljava/lang/String; = "content://security_mms/part/"

.field public static final SPAMMMS_URI:Ljava/lang/String; = "content://spammms/spampart/"

.field public static final URI_LOCAL_CONTENTS:Ljava/lang/String; = "file"

.field public static final URI_MY_FILES_FILE_PROVIDER:Ljava/lang/String; = "content://com.sec.android.app.myfiles.FileProvider/"

.field public static final URI_WEB_CONTENTS:Ljava/lang/String; = "http"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SoundPlayerFileInfo;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 35
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SoundPlayerFileInfo;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
