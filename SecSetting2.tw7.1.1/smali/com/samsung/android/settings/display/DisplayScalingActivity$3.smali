.class Lcom/samsung/android/settings/display/DisplayScalingActivity$3;
.super Ljava/lang/Object;
.source "DisplayScalingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/DisplayScalingActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/DisplayScalingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/DisplayScalingActivity;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$3;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$3;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->finish()V

    .line 431
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$3;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f017e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-set1(I)I

    .line 432
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$3;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get9(Lcom/samsung/android/settings/display/DisplayScalingActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayScalingActivity$3;->this$0:Lcom/samsung/android/settings/display/DisplayScalingActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->getMetricsCategory()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/display/DisplayScalingActivity;->-get1()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 433
    return-void
.end method