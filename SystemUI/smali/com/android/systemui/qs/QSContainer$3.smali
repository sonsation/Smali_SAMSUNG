.class Lcom/android/systemui/qs/QSContainer$3;
.super Ljava/lang/Object;
.source "QSContainer.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSContainer;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSContainer;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainer$3;->this$0:Lcom/android/systemui/qs/QSContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusAreaChange(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer$3;->this$0:Lcom/android/systemui/qs/QSContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/qs/QSContainer;->moveFocus(Landroid/view/View;I)V

    .line 139
    return-void
.end method
