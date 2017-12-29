.class Lcom/samsung/android/settings/face/FaceEntry$3;
.super Ljava/lang/Object;
.source "FaceEntry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceEntry;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceEntry;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/face/FaceEntry;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceEntry$3;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry$3;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    iget-object v0, v0, Lcom/samsung/android/settings/face/FaceEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry$3;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    iget-object v0, v0, Lcom/samsung/android/settings/face/FaceEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isRuleRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry$3;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    iget-object v0, v0, Lcom/samsung/android/settings/face/FaceEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry$3;->this$0:Lcom/samsung/android/settings/face/FaceEntry;

    iget-object v0, v0, Lcom/samsung/android/settings/face/FaceEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Face"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 343
    :cond_1
    return-void
.end method
