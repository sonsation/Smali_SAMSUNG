.class public abstract Lcom/samsung/android/apex/motionphoto/persistence/SemApexContentManager$ApexPhotoEntry;
.super Ljava/lang/Object;
.source "SemApexContentManager.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/persistence/SemApexContentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ApexPhotoEntry"
.end annotation


# static fields
.field public static final COLUMN_NAME_ENTRY_ID:Ljava/lang/String; = "entryid"

.field public static final COLUMN_NAME_PICTURE_PATH:Ljava/lang/String; = "picture_path"

.field public static final COLUMN_NAME_VIDEO_PATH:Ljava/lang/String; = "video_path"

.field private static final SQL_CREATE_ENTRIES:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS apex_photo (_id INTEGER PRIMARY KEY,entryid TEXT,picture_path TEXT,video_path TEXT, )"

.field private static final SQL_DELETE_ENTRIES:Ljava/lang/String; = "DROP TABLE IF EXISTS apex_photo"

.field public static final TABLE_NAME:Ljava/lang/String; = "apex_photo"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
