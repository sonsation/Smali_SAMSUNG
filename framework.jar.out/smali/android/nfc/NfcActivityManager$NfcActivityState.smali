.class Landroid/nfc/NfcActivityManager$NfcActivityState;
.super Ljava/lang/Object;
.source "NfcActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NfcActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcActivityState"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;

.field defaultRfVesrion:I

.field flags:I

.field listenTech:I

.field ndefMessage:Landroid/nfc/NdefMessage;

.field ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

.field onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

.field overrideRfVersion:I

.field pollTech:I

.field proto:Ljava/lang/String;

.field readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

.field readerModeExtras:Landroid/os/Bundle;

.field readerModeFlags:I

.field resumed:Z

.field services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field tech:Ljava/lang/String;

.field final synthetic this$0:Landroid/nfc/NfcActivityManager;

.field token:Landroid/os/Binder;

.field uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

.field uris:[Landroid/net/Uri;

.field userId:I


# direct methods
.method public constructor <init>(Landroid/nfc/NfcActivityManager;Landroid/app/Activity;)V
    .locals 4
    .param p1, "this$0"    # Landroid/nfc/NfcActivityManager;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 140
    iput-object p1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->this$0:Landroid/nfc/NfcActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-boolean v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 118
    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 119
    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 120
    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .line 121
    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 122
    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .line 123
    iput v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->flags:I

    .line 124
    iput v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    .line 125
    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerCallback:Landroid/nfc/NfcAdapter$ReaderCallback;

    .line 126
    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeExtras:Landroid/os/Bundle;

    .line 129
    iput v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->pollTech:I

    .line 130
    iput v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->listenTech:I

    .line 131
    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->proto:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->tech:Ljava/lang/String;

    .line 133
    iput v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->userId:I

    .line 134
    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->services:Ljava/util/List;

    .line 136
    iput v3, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->defaultRfVesrion:I

    .line 137
    iput v3, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->overrideRfVersion:I

    .line 141
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "activity is already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    const-string/jumbo v0, "android.permission.NFC"

    const-string/jumbo v1, "NFC permission required."

    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    iput-boolean v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 154
    iput-object p2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;

    .line 155
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 156
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/nfc/NfcActivityManager;->registerApplication(Landroid/app/Application;)V

    .line 140
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->this$0:Landroid/nfc/NfcActivityManager;

    iget-object v1, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/NfcActivityManager;->unregisterApplication(Landroid/app/Application;)V

    .line 160
    iput-boolean v4, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->resumed:Z

    .line 161
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->activity:Landroid/app/Activity;

    .line 162
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    .line 163
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 164
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .line 165
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 166
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    .line 167
    iput v4, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->readerModeFlags:I

    .line 168
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->token:Landroid/os/Binder;

    .line 170
    iput v3, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->pollTech:I

    .line 171
    iput v3, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->listenTech:I

    .line 172
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->tech:Ljava/lang/String;

    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->proto:Ljava/lang/String;

    .line 173
    iput-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->services:Ljava/util/List;

    .line 174
    iput v3, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->userId:I

    .line 176
    iput v5, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->defaultRfVesrion:I

    .line 177
    iput v5, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->overrideRfVersion:I

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessage:Landroid/nfc/NdefMessage;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->ndefMessageCallback:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v2, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 186
    iget-object v3, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->uris:[Landroid/net/Uri;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 187
    .local v1, "uri":Landroid/net/Uri;
    iget-object v5, p0, Landroid/nfc/NfcActivityManager$NfcActivityState;->onNdefPushCompleteCallback:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
