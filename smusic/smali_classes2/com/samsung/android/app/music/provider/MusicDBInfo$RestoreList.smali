.class final Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;
.super Ljava/lang/Object;
.source "MusicDBInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RestoreList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList$Extra;
    }
.end annotation


# static fields
.field static final CONTENT_URI:Landroid/net/Uri;

.field static final EXTRA:Ljava/lang/String; = "extra"

.field static final FROM_VERSION:Ljava/lang/String; = "from_version"

.field static final RESTORE_ACTION:Ljava/lang/String; = "restore_action"

.field static final SCHEMA_COLUMNS_DEFINITION:Ljava/lang/String; = "_id  INTEGER PRIMARY KEY AUTOINCREMENT, restore_action  INTEGER NOT NULL, from_version  INTEGER, to_version  INTEGER, extra  TEXT"

.field static final TABLE_NAME:Ljava/lang/String; = "restore_list"

.field static final TO_VERSION:Ljava/lang/String; = "to_version"

.field static final _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 801
    const-string v0, "content://com.sec.android.app.music/db_info/restore"

    .line 802
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$RestoreList;->CONTENT_URI:Landroid/net/Uri;

    .line 801
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
