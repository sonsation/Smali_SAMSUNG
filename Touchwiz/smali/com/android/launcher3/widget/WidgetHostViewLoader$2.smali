.class Lcom/android/launcher3/widget/WidgetHostViewLoader$2;
.super Ljava/lang/Object;
.source "WidgetHostViewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/WidgetHostViewLoader;->preloadWidget()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

.field final synthetic val$pInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/WidgetHostViewLoader;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/WidgetHostViewLoader;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->val$pInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 115
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-static {v6}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->access$100(Lcom/android/launcher3/widget/WidgetHostViewLoader;)I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 154
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-static {v6}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->access$000(Lcom/android/launcher3/widget/WidgetHostViewLoader;)Lcom/android/launcher3/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    .line 119
    .local v1, "homeController":Lcom/android/launcher3/home/HomeController;
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v0

    .line 120
    .local v0, "appWidgetHost":Lcom/android/launcher3/home/LauncherAppWidgetHost;
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-static {v6}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->access$000(Lcom/android/launcher3/widget/WidgetHostViewLoader;)Lcom/android/launcher3/Launcher;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    .line 121
    invoke-static {v7}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->access$100(Lcom/android/launcher3/widget/WidgetHostViewLoader;)I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->val$pInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 120
    invoke-virtual {v0, v6, v7, v8}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v2

    .line 122
    .local v2, "hostView":Landroid/appwidget/AppWidgetHostView;
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-static {v6}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->access$400(Lcom/android/launcher3/widget/WidgetHostViewLoader;)Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    move-result-object v6

    iput-object v2, v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 125
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-static {v6, v10}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->access$102(Lcom/android/launcher3/widget/WidgetHostViewLoader;I)I

    .line 127
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSARoundingFeature()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 128
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->val$pInfo:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.google.android.googlequicksearchbox"

    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v2

    .line 130
    check-cast v6, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    iput-boolean v9, v6, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsGSB:Z

    .line 131
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v4, "opts":Landroid/os/Bundle;
    const-string v6, "attached-launcher-identifier"

    const-string v7, "samsung-dream-launcher"

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v6, "requested-widget-style"

    const-string v7, "cqsb"

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v6, "widget-screen-bounds-left"

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 135
    const-string v6, "widget-screen-bounds-top"

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 136
    const-string v6, "widget-screen-bounds-right"

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getRight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 137
    const-string v6, "widget-screen-bounds-bottom"

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getBottom()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 138
    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 143
    .end local v4    # "opts":Landroid/os/Bundle;
    :cond_1
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 144
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-static {v7}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->access$400(Lcom/android/launcher3/widget/WidgetHostViewLoader;)Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/Workspace;->estimateItemSize(Lcom/android/launcher3/common/base/item/ItemInfo;)[I

    move-result-object v5

    .line 147
    .local v5, "unScaledSize":[I
    new-instance v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    aget v6, v5, v11

    aget v7, v5, v9

    invoke-direct {v3, v6, v7}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(II)V

    .line 149
    .local v3, "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    iput v11, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    iput v11, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    .line 150
    iput-boolean v9, v3, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->customPosition:Z

    .line 151
    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetHostView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-static {v6}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->access$000(Lcom/android/launcher3/widget/WidgetHostViewLoader;)Lcom/android/launcher3/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;)V

    .line 153
    iget-object v6, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-static {v6}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->access$500(Lcom/android/launcher3/widget/WidgetHostViewLoader;)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/widget/WidgetHostViewLoader$2;->this$0:Lcom/android/launcher3/widget/WidgetHostViewLoader;

    invoke-static {v7}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->access$400(Lcom/android/launcher3/widget/WidgetHostViewLoader;)Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
