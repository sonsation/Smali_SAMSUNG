.class Lcom/samsung/android/app/music/service/browser/MediaDescriptionUtils$MediaSessionExtra;
.super Ljava/lang/Object;
.source "MediaDescriptionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/browser/MediaDescriptionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionExtra"
.end annotation


# static fields
.field static final EXTRA_MUSIC_METADATA:Ljava/lang/String; = "com.google.android.music.mediasession.music_metadata"

.field static final METADATA_KEY_QUEUE_POSITION:Ljava/lang/String; = "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

.field static final METADATA_KEY_QUEUE_SIZE:Ljava/lang/String; = "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
