.class public Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
.super Ljava/lang/Object;
.source "BluetoothDevicePreferenceGroup.java"


# instance fields
.field private mChildIdCounter:I

.field private mContext:Landroid/content/Context;

.field private mIsVisibleDivider:Z

.field private mLayout:I

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mTitle:Ljava/lang/String;

    .line 33
    iput v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mLayout:I

    .line 37
    iput v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mChildIdCounter:I

    .line 41
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mProgress:Z

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mIsVisibleDivider:Z

    .line 45
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    .line 44
    return-void
.end method


# virtual methods
.method public addPreference(ILcom/android/settings/bluetooth/BluetoothDevicePreference;)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "preference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 96
    iget v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mChildIdCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mChildIdCounter:I

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setChildId(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 106
    const/4 v0, 0x1

    return v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 99
    :cond_1
    const-string/jumbo v0, "BluetoothDevicePreferenceGroup"

    const-string/jumbo v1, "addPreference :: contains preference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v2

    .line 103
    :cond_2
    const-string/jumbo v0, "BluetoothDevicePreferenceGroup"

    const-string/jumbo v1, "addPreference :: mList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v2
.end method

.method public findDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    return v0

    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mLayout:I

    return v0
.end method

.method public getPreference(I)Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    return-object v0

    .line 111
    :cond_0
    return-object v1
.end method

.method public getPreferenceCount()I
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 76
    .local v0, "ret":I
    :goto_0
    return v0

    .line 75
    .end local v0    # "ret":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreferenceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isVisibleDivider()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mIsVisibleDivider:Z

    return v0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 118
    :cond_0
    return-void
.end method

.method public remove(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "preference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "layout"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mLayout:I

    .line 56
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->mTitle:Ljava/lang/String;

    .line 49
    return-void
.end method
