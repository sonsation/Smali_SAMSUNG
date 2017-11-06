.class public abstract Lcom/google/android/exoplayer/hls/HlsPlaylist;
.super Ljava/lang/Object;
.source "HlsPlaylist.java"


# instance fields
.field public final baseUri:Ljava/lang/String;

.field public final type:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsPlaylist;->baseUri:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/google/android/exoplayer/hls/HlsPlaylist;->type:I

    .line 32
    return-void
.end method
