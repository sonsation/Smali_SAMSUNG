.class public Lcom/android/launcher3/home/LauncherAppWidgetInfo;
.super Lcom/android/launcher3/common/base/item/ItemInfo;
.source "LauncherAppWidgetInfo.java"


# static fields
.field public static final CUSTOM_WIDGET_ID:I = -0x64

.field public static final FLAG_ID_NOT_VALID:I = 0x1

.field public static final FLAG_PROVIDER_NOT_READY:I = 0x2

.field static final FLAG_RESTORE_STARTED:I = 0x8

.field public static final FLAG_UI_NOT_READY:I = 0x4

.field private static final NO_ID:I = -0x1

.field static final RESTORE_COMPLETED:I


# instance fields
.field public appWidgetId:I

.field public hostView:Landroid/appwidget/AppWidgetHostView;

.field public installProgress:I

.field private mHasNotifiedInitialWidgetSizeChanged:Z

.field public providerName:Landroid/content/ComponentName;

.field restoreStatus:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 3
    .param p1, "appWidgetId"    # I
    .param p2, "providerName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, -0x1

    .line 92
    invoke-direct {p0}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    .line 70
    iput v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    .line 82
    iput v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->installProgress:I

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 93
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 94
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->itemType:I

    .line 99
    :goto_0
    iput p1, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    .line 100
    iput-object p2, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 103
    const-wide/16 v0, -0x64

    iput-wide v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->container:J

    .line 107
    iput v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    .line 108
    iput v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    .line 110
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    .line 112
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->itemType:I

    goto :goto_0
.end method


# virtual methods
.method final hasRestoreFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 164
    iget v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCustomWidget()Z
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isWidgetIdValid()Z
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyWidgetSizeChanged(Lcom/android/launcher3/Launcher;)V
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    iget v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->updateWidgetSizeRanges(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;II)V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    .line 146
    return-void
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 121
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    const-string v0, "appWidgetProvider"

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "restored"

    iget v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    return-void
.end method

.method onBindAppWidget(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->onBindAppWidget(Lcom/android/launcher3/Launcher;Z)V

    .line 132
    return-void
.end method

.method onBindAppWidget(Lcom/android/launcher3/Launcher;Z)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "force"    # Z

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 136
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lcom/android/launcher3/Launcher;)V

    .line 138
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidget(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/launcher3/common/base/item/ItemInfo;->unbind()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 157
    return-void
.end method
