.class Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$3;
.super Ljava/lang/Object;
.source "SetAsActivity.java"

# interfaces
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->initMultiWindowInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$3;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeChanged(Z)V
    .locals 4
    .param p1, "isChanged"    # Z

    .prologue
    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$3;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$200(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;J)V

    .line 231
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$3;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$200(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;J)V

    .line 226
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity$3;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->access$200(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;J)V

    .line 221
    return-void
.end method
