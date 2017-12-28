.class public Lcom/android/launcher3/folder/folderlock/LockedItemRecords;
.super Ljava/lang/Object;
.source "LockedItemRecords.java"


# static fields
.field public static final APPLOCK:Ljava/lang/String; = "APPLOCK"

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final LOCKED_RECORD_NAME_DEF:Ljava/lang/String; = "locked_folder_records"

.field private static final SEPARATOR_STRING:Ljava/lang/String; = ","


# instance fields
.field private mMode:I

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "locked_folder_records"

    iput-object v0, p0, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->mName:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->mMode:I

    .line 17
    const-string v0, "locked_folder_records"

    iput-object v0, p0, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->mName:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public add(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Ljava/lang/String;
    .param p3, "itemId"    # J

    .prologue
    .line 78
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public add(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Ljava/lang/String;
    .param p3, "itemId"    # Ljava/lang/String;

    .prologue
    .line 59
    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->contains(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->getMode()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 66
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "key":Ljava/lang/String;
    const-string v4, ""

    invoke-interface {v3, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "items":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 71
    move-object v2, p3

    .line 73
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public add(Landroid/content/Context;Ljava/lang/String;[J)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Ljava/lang/String;
    .param p3, "itemIds"    # [J

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->getMode()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 47
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 48
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v6, p3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget-wide v2, p3, v5

    .line 50
    .local v2, "item":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 54
    .end local v2    # "item":J
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, p2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public contains(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Ljava/lang/String;
    .param p3, "itemId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 127
    if-nez p1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v5

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->getMode()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 131
    .local v4, "prefs":Landroid/content/SharedPreferences;
    move-object v3, p3

    .line 132
    .local v3, "key":Ljava/lang/String;
    const-string v6, ""

    invoke-interface {v4, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "items":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "itemList":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v1

    if-ge v0, v6, :cond_0

    .line 136
    aget-object v6, v1, v0

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 137
    const/4 v5, 0x1

    goto :goto_0

    .line 135
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected getMode()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->mMode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Ljava/lang/String;
    .param p3, "def"    # Ljava/lang/String;

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 123
    .end local p3    # "def":Ljava/lang/String;
    :goto_0
    return-object p3

    .line 121
    .restart local p3    # "def":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    .line 122
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->getMode()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 123
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1, v0, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public remove(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Ljava/lang/String;
    .param p3, "itemId"    # J

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 94
    :cond_0
    if-nez p2, :cond_1

    .line 95
    const-string v6, "Launcher.FolderLock"

    const-string v7, "container is null can not remove the recorder"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->getMode()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 101
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 102
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, ""

    invoke-interface {v5, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "items":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_3

    .line 106
    aget-object v6, v3, v2

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 105
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 109
    :cond_2
    aget-object v6, v3, v2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 112
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, p2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public removeAll(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v0, "drag"

    .line 83
    .local v0, "containerAddition":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->getMode()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 84
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 85
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    return-void
.end method

.method protected setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->mMode:I

    .line 30
    return-void
.end method

.method public size(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    const/4 v1, 0x0

    .line 37
    :goto_0
    return v1

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->getMode()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    goto :goto_0
.end method
