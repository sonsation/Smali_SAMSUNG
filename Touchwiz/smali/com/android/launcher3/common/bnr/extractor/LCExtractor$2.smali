.class Lcom/android/launcher3/common/bnr/extractor/LCExtractor$2;
.super Ljava/lang/Object;
.source "LCExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->startExtractLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$2;->this$0:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 130
    invoke-static {}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getInstance()Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    move-result-object v0

    .line 133
    .local v0, "bnrHelper":Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v8, "default_workspace"

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 134
    .local v6, "fileNameWorkspace":Ljava/lang/StringBuffer;
    iget-object v8, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$2;->this$0:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    invoke-static {v8}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->access$200(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 135
    const-string v8, "_easy"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :cond_0
    :goto_0
    const-string v8, ".xml"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v8, "default_application_order"

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 143
    .local v5, "fileNameApps":Ljava/lang/StringBuffer;
    iget-object v8, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$2;->this$0:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    invoke-static {v8}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->access$200(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 144
    const-string v8, "_easy"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :cond_1
    const-string v8, ".xml"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .local v1, "createMsg":Ljava/lang/StringBuffer;
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 150
    iget-object v8, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$2;->this$0:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    invoke-static {v8}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->access$200(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$2;->this$0:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    invoke-static {v8}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->access$300(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 151
    :cond_2
    const-string v8, ", "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 153
    :cond_3
    const-string v8, " is creating..."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    const-string v8, "Launcher.Extractor"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "/LCExtractor"

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 159
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "fileList":[Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 161
    const-string v8, "Launcher.Extractor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dir fileList.length : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    array-length v9, v4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_7

    aget-object v7, v4, v8

    .line 163
    .local v7, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/LCExtractor"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_4

    .line 166
    const-string v10, "Launcher.Extractor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", delete failed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 136
    .end local v1    # "createMsg":Ljava/lang/StringBuffer;
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileList":[Ljava/lang/String;
    .end local v5    # "fileNameApps":Ljava/lang/StringBuffer;
    .end local v7    # "filename":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$2;->this$0:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    invoke-static {v8}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->access$300(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 137
    const-string v8, "_homeonly"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 171
    .restart local v1    # "createMsg":Ljava/lang/StringBuffer;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v5    # "fileNameApps":Ljava/lang/StringBuffer;
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 174
    :cond_7
    iget-object v8, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$2;->this$0:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    invoke-static {v8}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->access$100(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "LCExtractorHome"

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->extractXML(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 175
    const-string v8, "Launcher.Extractor"

    const-string v9, "makeDefaultWorkspace() is failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_8
    iget-object v8, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$2;->this$0:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    invoke-static {v8}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->access$200(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$2;->this$0:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    invoke-static {v8}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->access$300(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 179
    :cond_9
    iget-object v8, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$2;->this$0:Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    invoke-static {v8}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->access$100(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "LCExtractorApps"

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->extractXML(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 180
    const-string v8, "Launcher.Extractor"

    const-string v9, "makeDefaultAppOrder() is failed."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_a
    return-void
.end method
