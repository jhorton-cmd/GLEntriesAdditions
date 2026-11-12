# G/L Entries Additions

This Business Central AL extension adds customer ownership details to the
**General Ledger Entries** list.

## What it adds

The list includes two read-only columns:

- **Salesperson Code**
- **Lifecycle Manager**

For entries whose **Source Type** is **Customer**, the extension uses **Source
No.** to find the customer and display the corresponding values from the
Customer card. The columns are blank for entries with other source types or
when the source number does not match a customer.

## Requirements

- Dynamics 365 Business Central application version 28.0 or compatible.
- The **Hunter_Farmer** extension (publisher `IDE-JodyH`, version `1.0.0.6`),
  which provides the Customer **Lifecycle Manager** field.
- Visual Studio Code with the AL Language extension to build or publish.

The Hunter_Farmer dependency is declared in `app.json` and must be available in
the target environment.

## Build and publish

1. Open this project folder in Visual Studio Code.
2. Run **AL: Download Symbols** from the Command Palette.
3. Run **AL: Package** to build the extension.
4. Configure a Business Central launch profile for your target environment, then
   run **AL: Publish**.

The extension uses object ID `50250`; its configured ID range is `50250–50259`.
