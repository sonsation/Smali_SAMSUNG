.class public Lcom/android/launcher3/widget/PendingAddWidgetInfo;
.super Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
.source "PendingAddWidgetInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PendingAddWidgetInfo"


# instance fields
.field public bindOptions:Landroid/os/Bundle;

.field public boundWidget:Landroid/appwidget/AppWidgetHostView;

.field public icon:I

.field public info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

.field public previewImage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .param p3, "data"    # Landroid/os/Parcelable;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 44
    iget-boolean v0, p2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->itemType:I

    .line 49
    :goto_0
    iput-object p2, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 50
    invoke-static {p1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 51
    iget-object v0, p2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 52
    iget v0, p2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->previewImage:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->previewImage:I

    .line 53
    iget v0, p2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->icon:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->icon:I

    .line 55
    invoke-virtual {p2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    .line 56
    invoke-virtual {p2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    .line 57
    invoke-virtual {p2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 58
    invoke-virtual {p2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 59
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->itemType:I

    goto :goto_0
.end method


# virtual methods
.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 87
    invoke-static {p1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->loadLabel(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mLabel:Ljava/lang/String;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    return-object v0
.end method

.method public getSpan()[I
    .locals 3

    .prologue
    .line 78
    const-string v0, "PendingAddWidgetInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", minWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget v2, v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", minHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget v2, v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    .line 80
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanX()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanY()I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public isCustomWidget()Z
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    const-string v0, "PendingAddWidgetInfo package=%s, name=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 68
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 67
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
