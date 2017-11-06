.class Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$2;
.super Ljava/lang/Object;
.source "RequestSpinnerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView$2;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;

    .line 123
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;->access$000(Lcom/samsung/android/app/music/milk/radio/widget/RequestSpinnerView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0347

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->showRadioToastWithinDuration(Landroid/content/Context;II)V

    .line 125
    return-void
.end method
