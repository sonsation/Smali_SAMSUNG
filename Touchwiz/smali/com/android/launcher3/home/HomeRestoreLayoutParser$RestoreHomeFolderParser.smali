.class Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreHomeFolderParser;
.super Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;
.source "HomeRestoreLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeRestoreLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreHomeFolderParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreHomeFolderParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser;
    .param p2, "x1"    # Lcom/android/launcher3/home/HomeRestoreLayoutParser$1;

    .prologue
    .line 742
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreHomeFolderParser;-><init>(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)V

    return-void
.end method


# virtual methods
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
    .line 746
    iget-object v0, p0, Lcom/android/launcher3/home/HomeRestoreLayoutParser$RestoreHomeFolderParser;->this$0:Lcom/android/launcher3/home/HomeRestoreLayoutParser;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeRestoreLayoutParser;->access$4900(Lcom/android/launcher3/home/HomeRestoreLayoutParser;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 747
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
