.class Lcom/mapps/android/view/EndingAdView$9$1;
.super Ljava/lang/Object;
.source "EndingAdView.java"

# interfaces
.implements Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView$9;->onAdvertisingId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/EndingAdView$9;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$9$1;->this$1:Lcom/mapps/android/view/EndingAdView$9;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AdViewCodeComplete(Z)V
    .locals 1
    .param p1, "checkInterval"    # Z

    .prologue
    .line 222
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$9$1;->this$1:Lcom/mapps/android/view/EndingAdView$9;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$9;->access$0(Lcom/mapps/android/view/EndingAdView$9;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    iput-boolean p1, v0, Lcom/mapps/android/view/EndingAdView;->adInterval:Z

    .line 223
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$9$1;->this$1:Lcom/mapps/android/view/EndingAdView$9;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$9;->access$0(Lcom/mapps/android/view/EndingAdView$9;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$20(Lcom/mapps/android/view/EndingAdView;)V

    .line 224
    return-void
.end method
