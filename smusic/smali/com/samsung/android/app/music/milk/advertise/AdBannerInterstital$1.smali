.class Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital$1;
.super Ljava/lang/Object;
.source "AdBannerInterstital.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->onFailedToReceive(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital$1;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital$1;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdBannerInterstital;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a02de

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    return-void
.end method
