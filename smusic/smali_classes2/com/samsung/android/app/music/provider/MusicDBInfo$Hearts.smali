.class final Lcom/samsung/android/app/music/provider/MusicDBInfo$Hearts;
.super Ljava/lang/Object;
.source "MusicDBInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Hearts"
.end annotation


# static fields
.field static final ALTER_COLUMN_10091_CONTENT_LOCATION:Ljava/lang/String; = "ALTER TABLE favorites ADD COLUMN content_location INTEGER DEFAULT 1"

.field static final ALTER_COLUMN_20200_SERVER_CATEGORY_ID:Ljava/lang/String; = "server_category_id TEXT"

.field static final ALTER_COLUMN_20200_SUB_CATEGORY_TYPE:Ljava/lang/String; = " sub_category_type INTEGER DEFAULT 0"

.field static final SCHEMA_COLUMNS_DEFINITION_10009:Ljava/lang/String; = "_id INTEGER PRIMARY KEY AUTOINCREMENT,category_type INTEGER,category_id TEXT,favorite_name TEXT,album_id INTEGER,data1 INTEGER DEFAULT 0,data2 INTEGER DEFAULT 0,display_order INTEGER DEFAULT 0,CONSTRAINT unique_favorites UNIQUE(category_type, category_id)"

.field static final SCHEMA_COLUMNS_DEFINITION_20200:Ljava/lang/String; = "_id INTEGER PRIMARY KEY AUTOINCREMENT,category_type INTEGER,category_id TEXT,favorite_name TEXT,album_id INTEGER,data1 INTEGER DEFAULT 0,data2 INTEGER DEFAULT 0,display_order INTEGER DEFAULT 0,cp_attrs INTEGER NOT NULL,CONSTRAINT unique_favorites UNIQUE(category_type, category_id)"

.field private static final SCHEMA_COLUMNS_DEFINITION_COMMON:Ljava/lang/String; = "_id INTEGER PRIMARY KEY AUTOINCREMENT,category_type INTEGER,category_id TEXT,favorite_name TEXT,album_id INTEGER,data1 INTEGER DEFAULT 0,data2 INTEGER DEFAULT 0,display_order INTEGER DEFAULT 0"

.field static final TABLE_NAME:Ljava/lang/String; = "hearts"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
