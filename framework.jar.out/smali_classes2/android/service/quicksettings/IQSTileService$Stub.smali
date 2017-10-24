.class public abstract Landroid/service/quicksettings/IQSTileService$Stub;
.super Landroid/os/Binder;
.source "IQSTileService.java"

# interfaces
.implements Landroid/service/quicksettings/IQSTileService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/IQSTileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quicksettings/IQSTileService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.quicksettings.IQSTileService"

.field static final TRANSACTION_onClick:I = 0x5

.field static final TRANSACTION_onStartListening:I = 0x3

.field static final TRANSACTION_onStopListening:I = 0x4

.field static final TRANSACTION_onTileAdded:I = 0x1

.field static final TRANSACTION_onTileRemoved:I = 0x2

.field static final TRANSACTION_onUnlockComplete:I = 0x6

.field static final TRANSACTION_semGetDetailView:I = 0xb

.field static final TRANSACTION_semGetDetailViewSettingButtonName:I = 0x8

.field static final TRANSACTION_semGetDetailViewTitle:I = 0x7

.field static final TRANSACTION_semGetSettingsIntent:I = 0xc

.field static final TRANSACTION_semIsToggleButtonChecked:I = 0xa

.field static final TRANSACTION_semIsToggleButtonExists:I = 0x9

.field static final TRANSACTION_semRefreshConnection:I = 0xe

.field static final TRANSACTION_semSetToggleButtonChecked:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/quicksettings/IQSTileService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.service.quicksettings.IQSTileService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/quicksettings/IQSTileService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/service/quicksettings/IQSTileService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/quicksettings/IQSTileService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/quicksettings/IQSTileService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    .line 45
    :sswitch_0
    const-string/jumbo v7, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v8

    .line 50
    :sswitch_1
    const-string/jumbo v7, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onTileAdded()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    return v8

    .line 57
    :sswitch_2
    const-string/jumbo v7, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onTileRemoved()V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    return v8

    .line 64
    :sswitch_3
    const-string/jumbo v7, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onStartListening()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    return v8

    .line 71
    :sswitch_4
    const-string/jumbo v7, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onStopListening()V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    return v8

    .line 78
    :sswitch_5
    const-string/jumbo v7, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 81
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/service/quicksettings/IQSTileService$Stub;->onClick(Landroid/os/IBinder;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v8

    .line 87
    .end local v1    # "_arg0":Landroid/os/IBinder;
    :sswitch_6
    const-string/jumbo v7, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->onUnlockComplete()V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    return v8

    .line 94
    :sswitch_7
    const-string/jumbo v9, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->semGetDetailViewTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 96
    .local v5, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v5, :cond_0

    .line 98
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-static {v5, p3, v8}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 104
    :goto_0
    return v8

    .line 102
    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 108
    .end local v5    # "_result":Ljava/lang/CharSequence;
    :sswitch_8
    const-string/jumbo v9, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->semGetDetailViewSettingButtonName()Ljava/lang/CharSequence;

    move-result-object v5

    .line 110
    .restart local v5    # "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v5, :cond_1

    .line 112
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-static {v5, p3, v8}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 118
    :goto_1
    return v8

    .line 116
    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 122
    .end local v5    # "_result":Ljava/lang/CharSequence;
    :sswitch_9
    const-string/jumbo v9, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->semIsToggleButtonExists()Z

    move-result v6

    .line 124
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v6, :cond_2

    move v7, v8

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return v8

    .line 130
    .end local v6    # "_result":Z
    :sswitch_a
    const-string/jumbo v9, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->semIsToggleButtonChecked()Z

    move-result v6

    .line 132
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    if-eqz v6, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return v8

    .line 138
    .end local v6    # "_result":Z
    :sswitch_b
    const-string/jumbo v9, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->semGetDetailView()Landroid/widget/RemoteViews;

    move-result-object v4

    .line 140
    .local v4, "_result":Landroid/widget/RemoteViews;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    if-eqz v4, :cond_4

    .line 142
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    invoke-virtual {v4, p3, v8}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    :goto_2
    return v8

    .line 146
    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 152
    .end local v4    # "_result":Landroid/widget/RemoteViews;
    :sswitch_c
    const-string/jumbo v9, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroid/service/quicksettings/IQSTileService$Stub;->semGetSettingsIntent()Landroid/content/Intent;

    move-result-object v3

    .line 154
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v3, :cond_5

    .line 156
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    invoke-virtual {v3, p3, v8}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 162
    :goto_3
    return v8

    .line 160
    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 166
    .end local v3    # "_result":Landroid/content/Intent;
    :sswitch_d
    const-string/jumbo v9, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    move v2, v8

    .line 169
    .local v2, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v2}, Landroid/service/quicksettings/IQSTileService$Stub;->semSetToggleButtonChecked(Z)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    return v8

    .end local v2    # "_arg0":Z
    :cond_6
    move v2, v7

    .line 168
    goto :goto_4

    .line 175
    :sswitch_e
    const-string/jumbo v7, "android.service.quicksettings.IQSTileService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    .line 178
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 183
    :goto_5
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/IQSTileService$Stub;->semRefreshConnection(Landroid/content/Intent;)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    return v8

    .line 181
    :cond_7
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/content/Intent;
    goto :goto_5

    .line 41
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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
