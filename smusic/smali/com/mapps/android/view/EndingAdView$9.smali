.class Lcom/mapps/android/view/EndingAdView$9;
.super Ljava/lang/Object;
.source "EndingAdView.java"

# interfaces
.implements Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->startEndingAdView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$9;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/EndingAdView$9;)Lcom/mapps/android/view/EndingAdView;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$9;->this$0:Lcom/mapps/android/view/EndingAdView;

    return-object v0
.end method


# virtual methods
.method public onAdvertisingId(Ljava/lang/String;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$9;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$9;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$16(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView$9;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v3}, Lcom/mapps/android/view/EndingAdView;->access$17(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$9;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v4}, Lcom/mapps/android/view/EndingAdView;->access$18(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/mapps/android/view/EndingAdView$9;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget v6, v6, Lcom/mapps/android/view/EndingAdView;->media_type:I

    iget-object v7, p0, Lcom/mapps/android/view/EndingAdView$9;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v7}, Lcom/mapps/android/view/EndingAdView;->access$19(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/mapps/android/view/EndingAdView$9$1;

    invoke-direct {v8, p0}, Lcom/mapps/android/view/EndingAdView$9$1;-><init>(Lcom/mapps/android/view/EndingAdView$9;)V

    invoke-virtual/range {v0 .. v8}, Lcom/mapps/android/share/ShareUtil;->setAdViewCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;)V

    .line 226
    return-void
.end method
