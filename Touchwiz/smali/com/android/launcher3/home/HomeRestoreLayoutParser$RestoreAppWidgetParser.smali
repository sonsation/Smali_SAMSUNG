.class Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppWidgetParser;
.super Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;
.source "HomeRestoreLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeRestoreLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreAppWidgetParser"
.end annotation


# instance fields
.field private mRestoreWidgetId:I

.field final synthetic this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)V
    .locals 1

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppWidgetParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    .line 674
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppWidgetParser;->mRestoreWidgetId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;
    .param p2, "x1"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;

    .prologue
    .line 673
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppWidgetParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)V

    return-void
.end method


# virtual methods
.method protected bindAppWidget(ILandroid/content/ComponentName;JLjava/lang/String;)Z
    .locals 5
    .param p1, "appWidgetId"    # I
    .param p2, "cn"    # Landroid/content/ComponentName;
    .param p3, "dbId"    # J
    .param p5, "tableName"    # Ljava/lang/String;

    .prologue
    .line 706
    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppWidgetParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$4400(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 708
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 709
    .local v1, "options":Landroid/os/Bundle;
    const-string v2, "appWidgetIdForceAllocMode"

    const-string v3, "ifEmpty"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v2, "appWidgetIdForceAllocHostId"

    const/16 v3, 0x400

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 711
    const-string v2, "Old_WidgetId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 712
    const-string v2, "New_WidgetId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 714
    iget v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppWidgetParser;->mRestoreWidgetId:I

    invoke-virtual {v0, v2, p2, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 715
    const-string v2, "Launcher.HomeRestore"

    const-string v3, "bindAppWidgetIdIfAllowed() return false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v2, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppWidgetParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$4500(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-static {v4, p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method protected getAppWidgetId()I
    .locals 1

    .prologue
    .line 700
    iget v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppWidgetParser;->mRestoreWidgetId:I

    return v0
.end method

.method protected getWidgetComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 686
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;->getWidgetComponent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 687
    .local v1, "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 688
    new-instance v1, Landroid/content/ComponentName;

    .end local v1    # "cn":Landroid/content/ComponentName;
    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    .restart local v1    # "cn":Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getChangedWidgetComponent(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    .line 690
    .local v0, "changedComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 695
    .end local v0    # "changedComponent":Landroid/content/ComponentName;
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppWidgetParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$4300(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 680
    const-string v0, "appWidgetID"

    invoke-static {p1, v0}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreAppWidgetParser;->mRestoreWidgetId:I

    .line 681
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
