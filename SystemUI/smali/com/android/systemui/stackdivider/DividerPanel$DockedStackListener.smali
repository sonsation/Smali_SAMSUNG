.class Lcom/android/systemui/stackdivider/DividerPanel$DockedStackListener;
.super Landroid/view/IDockedStackListener$Stub;
.source "DividerPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DockedStackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/stackdivider/DividerPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/DividerPanel;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerPanel$DockedStackListener;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-direct {p0}, Landroid/view/IDockedStackListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerPanel;Lcom/android/systemui/stackdivider/DividerPanel$DockedStackListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/DividerPanel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerPanel$DockedStackListener;-><init>(Lcom/android/systemui/stackdivider/DividerPanel;)V

    return-void
.end method


# virtual methods
.method public onAdjustedForImeChanged(ZJ)V
    .locals 0
    .param p1, "adjustedForIme"    # Z
    .param p2, "animDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 304
    return-void
.end method

.method public onDividerVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel$DockedStackListener;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-static {v0, p1}, Lcom/android/systemui/stackdivider/DividerPanel;->-wrap0(Lcom/android/systemui/stackdivider/DividerPanel;Z)V

    .line 289
    return-void
.end method

.method public onDockSideChanged(I)V
    .locals 0
    .param p1, "newDockSide"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 309
    return-void
.end method

.method public onDockedStackExistsChanged(Z)V
    .locals 0
    .param p1, "exists"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 294
    return-void
.end method

.method public onDockedStackMinimizedChanged(ZJ)V
    .locals 1
    .param p1, "minimized"    # Z
    .param p2, "animDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel$DockedStackListener;->this$0:Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-static {v0, p1}, Lcom/android/systemui/stackdivider/DividerPanel;->-wrap1(Lcom/android/systemui/stackdivider/DividerPanel;Z)V

    .line 299
    return-void
.end method
