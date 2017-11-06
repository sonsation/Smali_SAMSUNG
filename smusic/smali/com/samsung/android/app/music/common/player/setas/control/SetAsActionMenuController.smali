.class final Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;
.super Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;
.source "SetAsActionMenuController.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/setas/widget/SetAsItemLayout$OnCheckChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$OnCommandDelegate;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final VIEW_ALPHA_DIM:F = 0.5f

.field private static final VIEW_ALPHA_NORMAL:F = 1.0f


# instance fields
.field private final mDoneButton:Landroid/view/View;

.field private final mOnCommandDelegate:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$OnCommandDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetAs-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/View;Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$OnCommandDelegate;)V
    .locals 3
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "commandDelegate"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$OnCommandDelegate;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/CancelDoneActionMenu;-><init>(Landroid/view/View;)V

    .line 32
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;->mOnCommandDelegate:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$OnCommandDelegate;

    .line 33
    const v1, 0x7f120111

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;->mDoneButton:Landroid/view/View;

    .line 34
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;->mDoneButton:Landroid/view/View;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 35
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;->mDoneButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 37
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;->mDoneButton:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$1;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v1, 0x7f12010f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    .local v0, "cancelButton":Landroid/widget/TextView;
    new-instance v1, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$2;-><init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;)Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$OnCommandDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;->mOnCommandDelegate:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$OnCommandDelegate;

    return-object v0
.end method

.method private updateMenu()V
    .locals 5

    .prologue
    .line 58
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;->mOnCommandDelegate:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$OnCommandDelegate;

    invoke-interface {v2}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$OnCommandDelegate;->isRecommendChecked()Z

    move-result v0

    .line 59
    .local v0, "isRecommendChecked":Z
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;->mOnCommandDelegate:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$OnCommandDelegate;

    invoke-interface {v2}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$OnCommandDelegate;->isToneChecked()Z

    move-result v1

    .line 61
    .local v1, "isToneChecked":Z
    sget-object v2, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateMenu() tone checked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", recommend checked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_FW_AUTO_RECOMMENDATION:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    .line 64
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;->mDoneButton:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 65
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;->mDoneButton:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;->mDoneButton:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 68
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;->mDoneButton:Landroid/view/View;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckChanged(IZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;->updateMenu()V

    .line 55
    return-void
.end method
