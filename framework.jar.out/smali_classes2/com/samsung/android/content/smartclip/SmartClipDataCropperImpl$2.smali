.class Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$2;
.super Landroid/os/Handler;
.source "SmartClipDataCropperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_ThirdPartyInterface(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mResult:Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

.field final synthetic this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

.field final synthetic val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;
    .param p2, "val$resultElement"    # Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .param p3, "val$view"    # Landroid/view/View;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$2;->this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$2;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object p3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 652
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$2;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$2;->mResult:Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    .line 651
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 655
    const-string/jumbo v1, "SmartClipDataCropperImpl"

    const-string/jumbo v2, "Pending meta data arrived from third party"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 657
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 658
    const-string/jumbo v1, "SmartClipDataCropperImpl"

    const-string/jumbo v2, "The bundle is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$2;->this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$2;->mResult:Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->setPendingExtractionResult(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    .line 660
    return-void

    .line 662
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$2;->this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$2;->val$view:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$2;->val$resultElement:Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->-wrap1(Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z

    .line 663
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$2;->this$0:Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$2;->mResult:Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->setPendingExtractionResult(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    .line 654
    return-void
.end method
