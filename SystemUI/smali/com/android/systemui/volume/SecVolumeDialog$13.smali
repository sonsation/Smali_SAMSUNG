.class Lcom/android/systemui/volume/SecVolumeDialog$13;
.super Lcom/android/systemui/volume/SafetyWarningDialog;
.source "SecVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog;->showSafetyWarningH(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/media/AudioManager;

    .prologue
    .line 2248
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/volume/SafetyWarningDialog;-><init>(Landroid/content/Context;Landroid/media/AudioManager;)V

    .line 2249
    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2252
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get34(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2253
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-set19(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2256
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$13;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap10(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 2251
    return-void

    .line 2252
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
