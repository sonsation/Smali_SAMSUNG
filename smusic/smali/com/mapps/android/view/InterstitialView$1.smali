.class Lcom/mapps/android/view/InterstitialView$1;
.super Landroid/os/Handler;
.source "InterstitialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/InterstitialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/InterstitialView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$1;->this$0:Lcom/mapps/android/view/InterstitialView;

    .line 286
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/InterstitialView$1;)Lcom/mapps/android/view/InterstitialView;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$1;->this$0:Lcom/mapps/android/view/InterstitialView;

    return-object v0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 289
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$1;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView;->access$0(Lcom/mapps/android/view/InterstitialView;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView$1;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-virtual {v3}, Lcom/mapps/android/view/InterstitialView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/view/InterstitialView$1;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v4}, Lcom/mapps/android/view/InterstitialView;->access$1(Lcom/mapps/android/view/InterstitialView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$1;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView;->access$2(Lcom/mapps/android/view/InterstitialView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$1;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView;->access$2(Lcom/mapps/android/view/InterstitialView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_imp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$1;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/InterstitialView;->access$2(Lcom/mapps/android/view/InterstitialView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_imp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 293
    .local v0, "message":Landroid/os/Message;
    const-string v1, "Ssp_imp"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 294
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$1;->this$0:Lcom/mapps/android/view/InterstitialView;

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$1;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/InterstitialView;->access$2(Lcom/mapps/android/view/InterstitialView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_imp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mapps/android/view/InterstitialView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    .line 297
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$1;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView;->access$2(Lcom/mapps/android/view/InterstitialView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_imp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$1;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/InterstitialView;->access$2(Lcom/mapps/android/view/InterstitialView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_imp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 299
    .restart local v0    # "message":Landroid/os/Message;
    const-string v1, "Dsp_imp"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 300
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$1;->this$0:Lcom/mapps/android/view/InterstitialView;

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView$1;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/InterstitialView;->access$2(Lcom/mapps/android/view/InterstitialView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_imp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mapps/android/view/InterstitialView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    .line 303
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$1;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView;->access$0(Lcom/mapps/android/view/InterstitialView;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/mapps/android/view/InterstitialView$1$1;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/InterstitialView$1$1;-><init>(Lcom/mapps/android/view/InterstitialView$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    return-void
.end method
