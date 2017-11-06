.class Lcom/mapps/android/view/AdView$18;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->requestImageFileSave(Lcom/mezzo/common/network/data/DataBannerAD;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$data:Lcom/mezzo/common/network/data/DataBannerAD;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataBannerAD;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$18;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$18;->val$data:Lcom/mezzo/common/network/data/DataBannerAD;

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 353
    iget-object v0, p0, Lcom/mapps/android/view/AdView$18;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v1, p0, Lcom/mapps/android/view/AdView$18;->val$data:Lcom/mezzo/common/network/data/DataBannerAD;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataBannerAD;->getImg_path()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdView$18;->val$data:Lcom/mezzo/common/network/data/DataBannerAD;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataBannerAD;->getImg_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/view/AdView;->ImageFileSave(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 354
    iget-object v0, p0, Lcom/mapps/android/view/AdView$18;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->EndOperator()V

    .line 355
    return-void
.end method
