.class Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->-wrap0(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    iget-object v4, v2, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    iget-object v2, v2, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get2(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    iget-object v2, v2, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get2(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    :goto_0
    invoke-static {v4, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-set14(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAccessibilityStateChanged: mIsTalkbackEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    iget-object v5, v5, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialog;->-get24(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    iget-object v2, v2, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get24(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    iget-object v2, v2, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get35(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setFocusable(Z)V

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    iget-object v2, v2, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get35(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    iget-object v3, v3, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->-get34(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080aa1

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    return-void
.end method
