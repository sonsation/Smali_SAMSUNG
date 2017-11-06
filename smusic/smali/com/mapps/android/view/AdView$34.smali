.class Lcom/mapps/android/view/AdView$34;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lcom/mapps/android/view/AdView$OnSSPAdmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->RotationSSPImage(ILcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$data:Lcom/mezzo/common/network/data/DataNTSSP;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataNTSSP;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$34;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$34;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    .line 1292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSSpAdmState(Lcom/mapps/android/view/AdView$SSPAdmState;)V
    .locals 3
    .param p1, "state"    # Lcom/mapps/android/view/AdView$SSPAdmState;

    .prologue
    .line 1296
    sget-object v1, Lcom/mapps/android/view/AdView$SSPAdmState;->VIEW:Lcom/mapps/android/view/AdView$SSPAdmState;

    if-ne p1, v1, :cond_1

    .line 1297
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1298
    .local v0, "message":Landroid/os/Message;
    const-string v1, "3Ssp_imp"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1299
    iget-object v1, p0, Lcom/mapps/android/view/AdView$34;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v2, p0, Lcom/mapps/android/view/AdView$34;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_imp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mapps/android/view/AdView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    .line 1303
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1300
    :cond_1
    sget-object v1, Lcom/mapps/android/view/AdView$SSPAdmState;->CLICK:Lcom/mapps/android/view/AdView$SSPAdmState;

    if-ne p1, v1, :cond_0

    .line 1301
    iget-object v1, p0, Lcom/mapps/android/view/AdView$34;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v2, p0, Lcom/mapps/android/view/AdView$34;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-static {v1, v2}, Lcom/mapps/android/view/AdView;->access$56(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataNTSSP;)V

    goto :goto_0
.end method
