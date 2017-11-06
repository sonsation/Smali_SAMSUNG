.class Lcom/mapps/android/view/EndingAdView$29$1;
.super Ljava/lang/Object;
.source "EndingAdView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView$29;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/EndingAdView$29;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView$29;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$29$1;->this$1:Lcom/mapps/android/view/EndingAdView$29;

    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView$29$1;->val$url:Ljava/lang/String;

    .line 1153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/mapps/android/view/EndingAdView$29$1;)Lcom/mapps/android/view/EndingAdView$29;
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$29$1;->this$1:Lcom/mapps/android/view/EndingAdView$29;

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1157
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$29$1;->this$1:Lcom/mapps/android/view/EndingAdView$29;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$29;->access$0(Lcom/mapps/android/view/EndingAdView$29;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mapps/android/view/EndingAdView;->bGotolinkType:Z

    if-nez v0, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$29$1;->this$1:Lcom/mapps/android/view/EndingAdView$29;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$29;->access$0(Lcom/mapps/android/view/EndingAdView$29;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/mapps/android/view/EndingAdView;->access$38(Lcom/mapps/android/view/EndingAdView;Z)V

    .line 1159
    invoke-static {}, Lcom/mapps/android/view/EndingAdView;->access$43()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "y"

    if-ne v0, v1, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$29$1;->this$1:Lcom/mapps/android/view/EndingAdView$29;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$29;->access$0(Lcom/mapps/android/view/EndingAdView$29;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$37(Lcom/mapps/android/view/EndingAdView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$29$1;->this$1:Lcom/mapps/android/view/EndingAdView$29;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$29;->access$0(Lcom/mapps/android/view/EndingAdView$29;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$29$1;->this$1:Lcom/mapps/android/view/EndingAdView$29;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView$29;->access$0(Lcom/mapps/android/view/EndingAdView$29;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$37(Lcom/mapps/android/view/EndingAdView;)Lcom/mezzo/common/network/data/DataNTSSP;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$44(Lcom/mapps/android/view/EndingAdView;Lcom/mezzo/common/network/data/DataNTSSP;)V

    .line 1164
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/EndingAdView$29$1$1;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$29$1;->val$url:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/mapps/android/view/EndingAdView$29$1$1;-><init>(Lcom/mapps/android/view/EndingAdView$29$1;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1176
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1178
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView$29$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
