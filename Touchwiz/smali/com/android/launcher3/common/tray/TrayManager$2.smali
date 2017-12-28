.class Lcom/android/launcher3/common/tray/TrayManager$2;
.super Ljava/lang/Object;
.source "TrayManager.java"

# interfaces
.implements Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/tray/TrayManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/tray/TrayManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/tray/TrayManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/tray/TrayManager;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDropTarget(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;
    .locals 1
    .param p1, "targetLevel"    # Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v0, p1}, Lcom/android/launcher3/common/tray/TrayManager;->access$600(Lcom/android/launcher3/common/tray/TrayManager;Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v0

    return-object v0
.end method

.method public onChangeStage(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)V
    .locals 2
    .param p1, "targetLevel"    # Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .param p2, "direction"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    const/4 v1, -0x1

    invoke-static {v0, p1, p2, v1}, Lcom/android/launcher3/common/tray/TrayManager;->access$500(Lcom/android/launcher3/common/tray/TrayManager;Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;II)V

    .line 208
    return-void
.end method

.method public onDragEnter(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x1

    .line 183
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v2}, Lcom/android/launcher3/common/tray/TrayManager;->access$000(Lcom/android/launcher3/common/tray/TrayManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 186
    .local v0, "lightDirection":I
    :goto_0
    sget-object v2, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/util/LightingEffectManager;->turnOnEachLight(IZ)V

    .line 188
    .end local v0    # "lightDirection":I
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 184
    goto :goto_0
.end method

.method public onDragExit(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 192
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v2, v1}, Lcom/android/launcher3/common/tray/TrayManager;->access$002(Lcom/android/launcher3/common/tray/TrayManager;Z)Z

    .line 193
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v2}, Lcom/android/launcher3/common/tray/TrayManager;->access$100(Lcom/android/launcher3/common/tray/TrayManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v2, v1}, Lcom/android/launcher3/common/tray/TrayManager;->access$102(Lcom/android/launcher3/common/tray/TrayManager;Z)Z

    .line 195
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v2}, Lcom/android/launcher3/common/tray/TrayManager;->access$300(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/tray/FakeView;->setSuppressChangeStage(Z)V

    .line 196
    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v2}, Lcom/android/launcher3/common/tray/TrayManager;->access$200(Lcom/android/launcher3/common/tray/TrayManager;)Lcom/android/launcher3/common/tray/FakeView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/tray/FakeView;->setSuppressChangeStage(Z)V

    .line 197
    sget-object v1, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    iget-object v2, p0, Lcom/android/launcher3/common/tray/TrayManager$2;->this$0:Lcom/android/launcher3/common/tray/TrayManager;

    invoke-static {v2}, Lcom/android/launcher3/common/tray/TrayManager;->access$400(Lcom/android/launcher3/common/tray/TrayManager;)I

    move-result v2

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/launcher3/util/LightingEffectManager;->showEffect(ZIZ)V

    .line 203
    :goto_0
    return-void

    .line 199
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 201
    .local v0, "lightDirection":I
    :cond_1
    sget-object v2, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/util/LightingEffectManager;->turnOnEachLight(IZ)V

    goto :goto_0
.end method
