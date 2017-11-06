.class Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$1;
.super Ljava/lang/Object;
.source "SynthesizePositioningAudio.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundAlive.OnErrorListener onError() is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SynthesizePositioningAudio;->release()V

    .line 39
    return-void
.end method
