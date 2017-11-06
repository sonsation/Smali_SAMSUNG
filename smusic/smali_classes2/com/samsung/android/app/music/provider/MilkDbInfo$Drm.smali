.class Lcom/samsung/android/app/music/provider/MilkDbInfo$Drm;
.super Ljava/lang/Object;
.source "MilkDbInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MilkDbInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Drm"
.end annotation


# static fields
.field static final TABLE_COLUMNS_DEFINITION:Ljava/lang/String; = "_id INTEGER PRIMARY KEY AUTOINCREMENT, audio_id INTEGER UNIQUE,validity INTEGER DEFAULT 0,track_id TEXT"

.field static final TABLE_NAME:Ljava/lang/String; = "milk_drm"

.field static final VIEW_NAME:Ljava/lang/String; = "milk_drm_view"

.field static final VIEW_SCHEMA:Ljava/lang/String; = "SELECT milk_drm._id AS _id, audio_id, title, album_id, album, artist_id, artist, _data, is_secretbox, sampling_rate, mime_type, bit_depth, is_drm, validity, track_id  FROM milk_drm LEFT OUTER JOIN audio ON audio._id = milk_drm.audio_id WHERE drm_type=2"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
