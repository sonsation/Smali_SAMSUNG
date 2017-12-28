.class public Lcom/android/launcher3/widget/WidgetHostViewLoader;
.super Ljava/lang/Object;
.source "WidgetHostViewLoader.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;


# instance fields
.field private mBindWidgetRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mInflateWidgetRunnable:Ljava/lang/Runnable;

.field private final mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mView:Landroid/view/View;

.field private mWidgetLoadingId:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    .line 29
    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    .line 43
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mView:Landroid/view/View;

    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/widget/WidgetHostViewLoader;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/WidgetHostViewLoader;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/widget/WidgetHostViewLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/WidgetHostViewLoader;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/widget/WidgetHostViewLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/widget/WidgetHostViewLoader;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/widget/WidgetHostViewLoader;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/WidgetHostViewLoader;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/widget/WidgetHostViewLoader;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/WidgetHostViewLoader;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/widget/WidgetHostViewLoader;)Lcom/android/launcher3/widget/PendingAddWidgetInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/WidgetHostViewLoader;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/widget/WidgetHostViewLoader;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/WidgetHostViewLoader;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mView:Landroid/view/View;

    return-object v0
.end method

.method public static getDefaultOptionsForWidget(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;
    .locals 9
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "info"    # Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .prologue
    .line 163
    const/4 v6, 0x0

    iget v7, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    invoke-static {p0, v6, v7, v8}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getWidgetSizeRanges(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;II)Landroid/graphics/Rect;

    move-result-object v3

    .line 164
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getPaddingForWidget()Landroid/graphics/Rect;

    move-result-object v2

    .line 166
    .local v2, "padding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    .line 167
    .local v0, "density":F
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v0

    float-to-int v4, v6

    .line 168
    .local v4, "xPaddingDips":I
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v0

    float-to-int v5, v6

    .line 170
    .local v5, "yPaddingDips":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 171
    .local v1, "options":Landroid/os/Bundle;
    const-string v6, "appWidgetMinWidth"

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    const-string v6, "appWidgetMinHeight"

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 175
    const-string v6, "appWidgetMaxWidth"

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    const-string v6, "appWidgetMaxHeight"

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v5

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    return-object v1
.end method


# virtual methods
.method public onDragEnd()Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 57
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/drag/DragManager;->removeDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    .line 59
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v0

    .line 65
    .local v0, "appWidgetHost":Lcom/android/launcher3/home/LauncherAppWidgetHost;
    iget v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    if-eq v1, v3, :cond_0

    .line 66
    iget v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 67
    iput v3, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v1, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v2, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 73
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v1, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 74
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 77
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 1
    .param p1, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public onHostViewDropped()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public preloadWidget()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v1, v3, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 85
    .local v1, "pInfo":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    if-nez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v2

    .line 87
    :cond_1
    iget-boolean v3, v1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-nez v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-static {v3, v4}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "options":Landroid/os/Bundle;
    iget-object v3, v1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    .line 94
    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iput-object v0, v3, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    goto :goto_0

    .line 98
    :cond_2
    new-instance v2, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/launcher3/widget/WidgetHostViewLoader$1;-><init>(Lcom/android/launcher3/widget/WidgetHostViewLoader;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    .line 112
    new-instance v2, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;-><init>(Lcom/android/launcher3/widget/WidgetHostViewLoader;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V

    iput-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    .line 157
    iget-object v2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    const/4 v2, 0x1

    goto :goto_0
.end method
