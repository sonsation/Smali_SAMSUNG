.class Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner$1;
.super Ljava/lang/Object;
.source "SmartStationBanner.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->showTipsBanner(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->showTipsBanner(Z)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner$1;->this$0:Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;->access$000(Lcom/samsung/android/app/music/milk/radio/widget/SmartStationBanner;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    return v2
.end method
