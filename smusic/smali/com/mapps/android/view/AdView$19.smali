.class Lcom/mapps/android/view/AdView$19;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->requestSSPImageFileSave(Lcom/mezzo/common/network/data/DataNTSSP;)V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdView$19;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$19;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 367
    iget-object v3, p0, Lcom/mapps/android/view/AdView$19;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTSSP;->getImg_path()Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "img_path":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "urlSplit":[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 370
    .local v0, "img_name":Ljava/lang/String;
    iget-object v3, p0, Lcom/mapps/android/view/AdView$19;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v4, p0, Lcom/mapps/android/view/AdView$19;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataNTSSP;->getImg_path()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v5}, Lcom/mapps/android/view/AdView;->ImageFileSave(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 371
    iget-object v3, p0, Lcom/mapps/android/view/AdView$19;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v4, p0, Lcom/mapps/android/view/AdView$19;->val$data:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v3, v4, v0}, Lcom/mapps/android/view/AdView;->endSSPOperator(Lcom/mezzo/common/network/data/DataNTSSP;Ljava/lang/String;)V

    .line 372
    return-void
.end method
