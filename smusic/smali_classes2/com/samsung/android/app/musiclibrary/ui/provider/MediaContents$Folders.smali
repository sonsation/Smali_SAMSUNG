.class public final Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;
.super Ljava/lang/Object;
.source "MediaContents.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$FolderColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Folders"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Members;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONVERTED_BUCKET_DISPLAY_NAME:Ljava/lang/String; = " CASE WHEN bucket_id=? THEN ?      WHEN bucket_id=? THEN ?      ELSE bucket_display_name END AS bucket_display_name"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String;

.field public static final PICKER_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 744
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->CONTENT_URI:Landroid/net/Uri;

    .line 750
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->getPickerContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->PICKER_CONTENT_URI:Landroid/net/Uri;

    .line 764
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->REGIONAL_CHN_PINYIN_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "bucket_display_name_pinyin"

    :goto_0
    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "bucket_display_name"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 741
    const-string v0, "content://com.sec.android.app.music/audio/media/music_folders"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getPickerContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 747
    const-string v0, "content://com.sec.android.app.music/audio/media/music_pick_folders"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
