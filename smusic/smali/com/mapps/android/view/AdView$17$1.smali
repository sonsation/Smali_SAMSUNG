.class Lcom/mapps/android/view/AdView$17$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/AdView$17;

.field private final synthetic val$codeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$17;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$17$1;->this$1:Lcom/mapps/android/view/AdView$17;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$17$1;->val$codeType:Ljava/lang/String;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdView$17$1;)Lcom/mapps/android/view/AdView$17;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/mapps/android/view/AdView$17$1;->this$1:Lcom/mapps/android/view/AdView$17;

    return-object v0
.end method


# virtual methods
.method public onAdvertisingId(Ljava/lang/String;)V
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 326
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdView$17$1;->this$1:Lcom/mapps/android/view/AdView$17;

    invoke-static {v1}, Lcom/mapps/android/view/AdView$17;->access$0(Lcom/mapps/android/view/AdView$17;)Lcom/mapps/android/view/AdView;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdView$17$1;->this$1:Lcom/mapps/android/view/AdView$17;

    invoke-static {v2}, Lcom/mapps/android/view/AdView$17;->access$0(Lcom/mapps/android/view/AdView$17;)Lcom/mapps/android/view/AdView;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$65(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/AdView$17$1;->this$1:Lcom/mapps/android/view/AdView$17;

    invoke-static {v3}, Lcom/mapps/android/view/AdView$17;->access$0(Lcom/mapps/android/view/AdView$17;)Lcom/mapps/android/view/AdView;

    move-result-object v3

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$66(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/view/AdView$17$1;->this$1:Lcom/mapps/android/view/AdView$17;

    invoke-static {v4}, Lcom/mapps/android/view/AdView$17;->access$0(Lcom/mapps/android/view/AdView$17;)Lcom/mapps/android/view/AdView;

    move-result-object v4

    invoke-static {v4}, Lcom/mapps/android/view/AdView;->access$67(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/mapps/android/view/AdView$17$1;->this$1:Lcom/mapps/android/view/AdView$17;

    invoke-static {v6}, Lcom/mapps/android/view/AdView$17;->access$0(Lcom/mapps/android/view/AdView$17;)Lcom/mapps/android/view/AdView;

    move-result-object v6

    invoke-static {v6}, Lcom/mapps/android/view/AdView;->access$63(Lcom/mapps/android/view/AdView;)I

    move-result v6

    iget-object v7, p0, Lcom/mapps/android/view/AdView$17$1;->val$codeType:Ljava/lang/String;

    new-instance v8, Lcom/mapps/android/view/AdView$17$1$1;

    iget-object v9, p0, Lcom/mapps/android/view/AdView$17$1;->val$codeType:Ljava/lang/String;

    invoke-direct {v8, p0, v9}, Lcom/mapps/android/view/AdView$17$1$1;-><init>(Lcom/mapps/android/view/AdView$17$1;Ljava/lang/String;)V

    invoke-virtual/range {v0 .. v8}, Lcom/mapps/android/share/ShareUtil;->setAdViewCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;)V

    .line 334
    return-void
.end method
