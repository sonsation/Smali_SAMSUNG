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
    .param p1, "this$1"    # Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    .prologue
    .line 2913
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2916
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->-set0(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;Z)Z

    .line 2917
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->-wrap0(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)V

    .line 2915
    return-void
.end method
