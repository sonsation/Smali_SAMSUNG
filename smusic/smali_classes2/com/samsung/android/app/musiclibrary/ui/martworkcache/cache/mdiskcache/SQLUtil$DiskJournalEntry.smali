.class final Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/SQLUtil$DiskJournalEntry;
.super Ljava/lang/Object;
.source "SQLUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/SQLUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DiskJournalEntry"
.end annotation


# static fields
.field static final ACCESS_ORDER:Ljava/lang/String; = "AccessOrder"

.field static final BITMAP_SIZE:Ljava/lang/String; = "BitmapSize"

.field static final FILE_NAME:Ljava/lang/String; = "Filename"

.field static final FILE_SIZE:Ljava/lang/String; = "FileSize"

.field static final TABLE_NAME:Ljava/lang/String; = "DiskCacheJournal"

.field static final URI:Ljava/lang/String; = "URI"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
