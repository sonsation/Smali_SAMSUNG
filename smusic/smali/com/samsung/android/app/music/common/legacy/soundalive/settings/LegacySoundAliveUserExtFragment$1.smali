.class Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$1;
.super Ljava/lang/Object;
.source "LegacySoundAliveUserExtFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->createView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$1;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 85
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$1;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->access$000(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;)[Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/widget/LegacySoundAliveSeekBar;->getMax()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment$1;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserExtFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a00e3

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    :cond_0
    return-void
.end method
