.class Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$CategoryParser;
.super Ljava/lang/Object;
.source "AppsRestoreLayoutParser.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoryParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;
    .param p2, "x1"    # Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$1;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$CategoryParser;-><init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 132
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 133
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "category":Ljava/lang/String;
    const-string v1, "Launcher.AppsRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore category : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v1, v0}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$302(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    if-nez v0, :cond_0

    .line 137
    const-string v1, "Launcher.AppsRestore"

    const-string v2, "category is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-wide/16 v2, -0x1

    .line 151
    .end local v0    # "category":Ljava/lang/String;
    :goto_0
    return-wide v2

    .line 139
    .restart local v0    # "category":Ljava/lang/String;
    :cond_0
    const-string v1, "appOrder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    const-string v1, "Launcher.AppsRestore"

    const-string v2, "there is no appOrder in category"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v0    # "category":Ljava/lang/String;
    :cond_1
    :goto_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 142
    .restart local v0    # "category":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$500(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "viewType_appOrder"

    new-instance v3, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ViewTypeParser;

    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ViewTypeParser;-><init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$500(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Rows_appOrder"

    new-instance v3, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RowsParser;

    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$RowsParser;-><init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$500(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Columns_appOrder"

    new-instance v3, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;

    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$ColumnsParser;-><init>(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$500(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "appOrder"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser$CategoryParser;->this$0:Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->access$500(Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "appOrder_easy"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
