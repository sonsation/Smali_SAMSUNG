.class public abstract Lcom/samsung/android/edge/IEdgeManager$Stub;
.super Landroid/os/Binder;
.source "IEdgeManager.java"

# interfaces
.implements Lcom/samsung/android/edge/IEdgeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edge/IEdgeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/edge/IEdgeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.edge.IEdgeManager"

.field static final TRANSACTION_bindEdgeLightingService:I = 0x2

.field static final TRANSACTION_getEdgeLightingState:I = 0x9

.field static final TRANSACTION_registerEdgeLightingListener:I = 0x5

.field static final TRANSACTION_startEdgeLighting:I = 0x7

.field static final TRANSACTION_stopEdgeLighting:I = 0x8

.field static final TRANSACTION_unbindEdgeLightingService:I = 0x3

.field static final TRANSACTION_unregisterEdgeLightingListener:I = 0x6

.field static final TRANSACTION_updateEdgeLightingList:I = 0x4

.field static final TRANSACTION_updatePolicy:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "com.samsung.android.edge.IEdgeManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "com.samsung.android.edge.IEdgeManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/edge/IEdgeManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/edge/IEdgeManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/edge/IEdgeManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/edge/IEdgeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    .line 43
    :sswitch_0
    const-string/jumbo v10, "com.samsung.android.edge.IEdgeManager"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v10, 0x1

    return v10

    .line 48
    :sswitch_1
    const-string/jumbo v10, "com.samsung.android.edge.IEdgeManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    .line 51
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 56
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/edge/IEdgeManager$Stub;->updatePolicy(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    const/4 v10, 0x1

    return v10

    .line 54
    :cond_0
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_0

    .line 62
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v10, "com.samsung.android.edge.IEdgeManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 66
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    .line 67
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 72
    :goto_1
    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/edge/IEdgeManager$Stub;->bindEdgeLightingService(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    const/4 v10, 0x1

    return v10

    .line 70
    :cond_1
    const/4 v4, 0x0

    .local v4, "_arg1":Landroid/content/ComponentName;
    goto :goto_1

    .line 78
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_3
    const-string/jumbo v10, "com.samsung.android.edge.IEdgeManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 82
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v7}, Lcom/samsung/android/edge/IEdgeManager$Stub;->unbindEdgeLightingService(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/4 v10, 0x1

    return v10

    .line 89
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v10, "com.samsung.android.edge.IEdgeManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 92
    .local v3, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v3}, Lcom/samsung/android/edge/IEdgeManager$Stub;->updateEdgeLightingList(Ljava/util/List;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v10, 0x1

    return v10

    .line 98
    .end local v3    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string/jumbo v10, "com.samsung.android.edge.IEdgeManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 102
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2

    .line 103
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 108
    :goto_2
    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/edge/IEdgeManager$Stub;->registerEdgeLightingListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    const/4 v10, 0x1

    return v10

    .line 106
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/content/ComponentName;
    goto :goto_2

    .line 114
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v4    # "_arg1":Landroid/content/ComponentName;
    :sswitch_6
    const-string/jumbo v10, "com.samsung.android.edge.IEdgeManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 118
    .restart local v1    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 119
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v7}, Lcom/samsung/android/edge/IEdgeManager$Stub;->unregisterEdgeLightingListener(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v10, 0x1

    return v10

    .line 125
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v10, "com.samsung.android.edge.IEdgeManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    .line 130
    sget-object v10, Lcom/samsung/android/edge/SemEdgeLightingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 136
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 137
    .local v8, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p0, v2, v6, v8}, Lcom/samsung/android/edge/IEdgeManager$Stub;->startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/os/IBinder;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    const/4 v10, 0x1

    return v10

    .line 133
    .end local v8    # "_arg2":Landroid/os/IBinder;
    :cond_3
    const/4 v6, 0x0

    .local v6, "_arg1":Lcom/samsung/android/edge/SemEdgeLightingInfo;
    goto :goto_3

    .line 143
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Lcom/samsung/android/edge/SemEdgeLightingInfo;
    :sswitch_8
    const-string/jumbo v10, "com.samsung.android.edge.IEdgeManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 148
    .local v5, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/edge/IEdgeManager$Stub;->stopEdgeLighting(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    const/4 v10, 0x1

    return v10

    .line 154
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":Landroid/os/IBinder;
    :sswitch_9
    const-string/jumbo v10, "com.samsung.android.edge.IEdgeManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/edge/IEdgeManager$Stub;->getEdgeLightingState()I

    move-result v9

    .line 156
    .local v9, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v10, 0x1

    return v10

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
